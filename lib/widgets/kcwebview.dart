import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KCWebView extends StatefulWidget {
  const KCWebView(this.controller, {super.key});

  final WebViewController controller;

  @override
  State<StatefulWidget> createState() => KCWebViewState();
}

class KCWebViewState extends State<KCWebView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: WebViewWidget(
        controller: widget.controller,
      ),
    );
  }
}
