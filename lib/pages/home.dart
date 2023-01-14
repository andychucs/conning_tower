import 'dart:async';
import 'dart:io';

import 'package:conning_tower/pages/about_page.dart';
import 'package:conning_tower/pages/settings_page.dart';
import 'package:conning_tower/pages/tools_page.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:conning_tower/widgets/fade_indexed_stack.dart';
import 'package:conning_tower/widgets/kcwebview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';
import '../generated/l10n.dart';

late bool allowNavi;
late bool autoAdjusted;
late bool bottomPadding;
late bool gameLoadCompleted;
late bool inKancolleWindow;
late bool beforeRedirect;
late double kWebviewHeight;
late double kWebviewWidth;
late int selectedIndex;
late Uri home;
late bool enableAutoProcess;

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
  bool _showNotify = true;
  bool _showIosNotify = true;
  bool _enableAutoProcess = true;
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

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
    selectedIndex = 0;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _loadConfig();
      if (_showNotify) {
        await _showMyDialog(S.current.AppNotify);
      }
      if (Platform.isIOS && _showIosNotify) {
        await _showMyDialog(S.current.MsgIOSNote);
      }
    });

    _initPackageInfo();
    home = Uri.parse(kGameUrl);
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Future<void> _loadConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _showNotify = (prefs.getBool('showNotify') ?? true);
      _showIosNotify = (prefs.getBool('showIosNotify') ?? true);
      _enableAutoProcess = (prefs.getBool('enableAutoProcess') ?? true);
      enableAutoProcess = _enableAutoProcess;
      bottomPadding = (prefs.getBool('bottomPadding') ?? false);

      // home = Uri.parse(prefs.getString('homeUrl') ?? kGameUrl);
    });
  }

  Future<void> _showMyDialog(String msg) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          msg: msg,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      deviceWidth = MediaQuery.of(context).size.width;
    } else if (Platform.isIOS) {
      deviceWidth = MediaQuery.of(context).size.height;
    } else {
      deviceWidth = MediaQuery.of(context).size.width;
    }
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: orientation == Orientation.portrait
          ? Controls(
              _controller.future,
              widget.cookieManager,
              notifyParent: () {
                setState(() {});
              },
              orientation: orientation,
            )
          : null,
      body: SafeArea(
        top: false,
        right: selectedIndex == 0 ? true : false,
        bottom: false,
        child: Row(
          children: <Widget>[
            if (orientation == Orientation.landscape)
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.vertical,
                child: IntrinsicHeight(
                  child: Controls(
                    _controller.future,
                    widget.cookieManager,
                    notifyParent: () {
                      setState(() {});
                    },
                    orientation: orientation,
                  ),
                ),
              ),
            if (orientation == Orientation.landscape)
              const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: FadeIndexedStack(
                index: selectedIndex,
                duration: const Duration(milliseconds: 100),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      bottom: bottomPadding ? deviceWidth / 18 : 0.0,
                    ),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: deviceWidth,
                    child: KCWebView(_controller),
                  ),
                  ToolsPage(
                    _controller.future,
                    widget.cookieManager,
                    notifyParent: () {
                      setState(() {});
                    },
                    reloadConfig: () {
                      _loadConfig();
                    },
                  ),
                  SettingsPage(
                    reloadConfig: () {
                      _loadConfig();
                    },
                  ),
                  AboutPage(
                    packageInfo: _packageInfo,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
