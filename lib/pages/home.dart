import 'dart:async';
import 'dart:io';

import 'package:conning_tower/widgets/controls.dart';
import 'package:conning_tower/widgets/dailog.dart';
import 'package:conning_tower/widgets/kcwebview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../generated/l10n.dart';

late bool allowNavi;
late bool autoAdjusted;
late bool bottomPadding;
late bool gameLoadCompleted;
late bool inKancolleWindow;
late double kWebviewHeight;
late double kWebviewWidth;

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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _showMyDialog(S.current.AppNotify);
      if (Platform.isIOS) {
        await _showMyDialog(S.current.MsgIOSNote);
      }
    });
  }

  Future<void> _showMyDialog(String msg) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CustomAlertDialog(msg: msg,);
      },
    );
  }

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
              bottom: bottomPadding ? deviceWidth / 18 : 0.0,
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
