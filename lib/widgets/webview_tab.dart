import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewTab extends StatefulWidget {
  final String? url;
  final int? windowId;
  final Function() onStateUpdated;
  final Function(CreateWindowAction createWindowAction) onCreateTabRequested;
  final Function() onCloseTabRequested;

  String? get currentUrl {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return state?._url;
  }

  bool? get isSecure {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return state?._isSecure;
  }

  Uint8List? get screenshot {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return state?._screenshot;
  }

  String? get title {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return state?._title;
  }

  Favicon? get favicon {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return state?._favicon;
  }

  const WebViewTab(
      {required GlobalKey key,
      this.url,
      required this.onStateUpdated,
      required this.onCloseTabRequested,
      required this.onCreateTabRequested,
      this.windowId})
      : assert(url != null || windowId != null),
        super(key: key);

  @override
  State<WebViewTab> createState() => _WebViewTabState();

  Future<void> updateScreenshot() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    await state?.updateScreenshot();
  }

  Future<void> pause() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    await state?.pause();
  }

  Future<void> resume() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    await state?.resume();
  }

  Future<bool> canGoBack() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return await state?.canGoBack() ?? false;
  }

  Future<void> goBack() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    await state?.goBack();
  }

  Future<bool> canGoForward() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    return await state?.canGoForward() ?? false;
  }

  Future<void> goForward() async {
    final state = (key as GlobalKey).currentState as _WebViewTabState?;
    await state?.goForward();
  }
}

class _WebViewTabState extends State<WebViewTab> with WidgetsBindingObserver {
  InAppWebViewController? _webViewController;
  Uint8List? _screenshot;
  String _url = '';
  bool? _isSecure;
  String _title = '';
  Favicon? _favicon;
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _url = widget.url ?? '';
  }

  @override
  void dispose() {
    _webViewController = null;
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!kIsWeb) {
      if (state == AppLifecycleState.resumed) {
        resume();
        _webViewController?.resumeTimers();
      } else {
        pause();
        _webViewController?.pauseTimers();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final url = widget.url;

    return Column(children: <Widget>[
      Expanded(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            InAppWebView(
              windowId: widget.windowId,
              initialUrlRequest:
                  url != null ? URLRequest(url: WebUri(url)) : null,
              initialSettings: InAppWebViewSettings(
                javaScriptCanOpenWindowsAutomatically: true,
                supportMultipleWindows: true,
                isFraudulentWebsiteWarningEnabled: true,
                safeBrowsingEnabled: true,
                mediaPlaybackRequiresUserGesture: false,
                allowsInlineMediaPlayback: true,
              ),
              onWebViewCreated: (controller) async {
                _webViewController = controller;
                if (!kIsWeb &&
                    defaultTargetPlatform == TargetPlatform.android) {
                  await controller.startSafeBrowsing();
                }
              },
              onLoadStart: (controller, url) {
                _favicon = null;
                _title = '';
                if (url != null) {
                  _url = url.toString();
                  _isSecure = urlIsSecure(url);
                }
                widget.onStateUpdated.call();
              },
              onLoadStop: (controller, url) async {
                updateScreenshot();

                if (url != null) {
                  final sslCertificate = await controller.getCertificate();
                  _url = url.toString();
                  _isSecure = sslCertificate != null || urlIsSecure(url);
                }

                final favicons = await _webViewController?.getFavicons();
                if (favicons != null && favicons.isNotEmpty) {
                  for (final favicon in favicons) {
                    if (_favicon == null) {
                      _favicon = favicon;
                    } else if (favicon.width != null &&
                        (favicon.width ?? 0) > (_favicon?.width ?? 0)) {
                      _favicon = favicon;
                    }
                  }
                }

                widget.onStateUpdated.call();
              },
              onUpdateVisitedHistory: (controller, url, isReload) {
                if (url != null) {
                  _url = url.toString();
                  widget.onStateUpdated.call();
                }
              },
              onTitleChanged: (controller, title) {
                _title = title ?? '';
                widget.onStateUpdated.call();
              },
              onProgressChanged: (controller, progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
              onCreateWindow: (controller, createWindowAction) async {
                widget.onCreateTabRequested(createWindowAction);
                return true;
              },
              onCloseWindow: (controller) {
                widget.onCloseTabRequested();
              },
            ),
            _progress < 1.0
                ? LinearProgressIndicator(
                    value: _progress,
                  )
                : Container(),
          ],
        ),
      ),
    ]);
  }

  Future<void> updateScreenshot() async {
    _screenshot = await _webViewController
        ?.takeScreenshot(
            screenshotConfiguration: ScreenshotConfiguration(
                compressFormat: CompressFormat.JPEG, quality: 20))
        .timeout(
          const Duration(milliseconds: 1500),
          onTimeout: () => null,
        );
  }

  Future<void> pause() async {
    if (!kIsWeb) {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        await _webViewController?.setAllMediaPlaybackSuspended(suspended: true);
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        await _webViewController?.pause();
      }
    }
  }

  Future<void> resume() async {
    if (!kIsWeb) {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        await _webViewController?.setAllMediaPlaybackSuspended(
            suspended: false);
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        await _webViewController?.resume();
      }
    }
  }

  Future<bool> canGoBack() async {
    return await _webViewController?.canGoBack() ?? false;
  }

  Future<void> goBack() async {
    if (await canGoBack()) {
      await _webViewController?.goBack();
    }
  }

  Future<bool> canGoForward() async {
    return await _webViewController?.canGoForward() ?? false;
  }

  Future<void> goForward() async {
    if (await canGoForward()) {
      await _webViewController?.goForward();
    }
  }

  static bool urlIsSecure(Uri url) {
    return (url.scheme == "https") || isLocalizedContent(url);
  }

  static bool isLocalizedContent(Uri url) {
    return (url.scheme == "file" ||
        url.scheme == "chrome" ||
        url.scheme == "data" ||
        url.scheme == "javascript" ||
        url.scheme == "about");
  }
}
