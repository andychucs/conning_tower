import 'dart:async';
import 'dart:io';

import 'package:conning_tower/pages/kcwebview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'controls.dart';

late bool inKancolleWindow;
late bool autoAdjusted;
late bool gameLoadCompleted;
late double kWebviewHeight;
late double kWebviewWidth;
late bool allowNavi;
late bool bottomPadding;

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.cookieManager}) : super(key: key);
  final CookieManager? cookieManager;

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  late double deviceWidth;

  @override
  void initState() {
    super.initState();
    gameLoadCompleted = false;
    inKancolleWindow = false;
    autoAdjusted = false;
    kWebviewHeight = 0.0;
    kWebviewWidth = 0.0;
    allowNavi = true;
    bottomPadding = false;
  }

  // const ConnTowerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      deviceWidth = MediaQuery.of(context).size.width;
      WebView.platform = SurfaceAndroidWebView();
    } else if (Platform.isIOS) {
      deviceWidth = MediaQuery.of(context).size.height;
    } else {
      deviceWidth = MediaQuery.of(context).size.width;
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Row(
      children: <Widget>[
        SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: IntrinsicHeight(
            child: AppLeftSideControls(
              _controller.future,
              widget.cookieManager,
              notifyParent: () {
                setState(() {});
              },
            ),
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              bottom: bottomPadding ? deviceWidth / 10 : 0.0,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: deviceWidth,
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: KCWebView(_controller),
            ),
          ),
        ),
      ],
    );
  }
}
