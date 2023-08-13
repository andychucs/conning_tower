import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/widgets/controls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
    required this.deviceWidth,
    required this.orientation,
    required this.notifyParent,
    required this.cookieManager,
    required this.functionMap,
  });

  final double deviceWidth;
  final Orientation orientation;
  final Function() notifyParent;
  final CookieManager? cookieManager;
  final Map<FunctionName, Function> functionMap;

  @override
  Widget build(BuildContext context) {
    if (appLayout == AppLayout.onlyJoystick || appLayout == AppLayout.bothFABJoystick) {
      if (Platform.isIOS || kIsOpenSource) {
        return SizedBox(
          width: 80,
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: deviceWidth > 584 + deviceWidth / 18 + 10 + 40
                        ? deviceWidth / 2 - 330
                        : 40,
                    bottom: 10,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.vertical,
                    child: IntrinsicHeight(
                      child: Controls(
                        cookieManager,
                        notifyParent: notifyParent,
                        orientation: orientation,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
                child: Controls(
              cookieManager,
              notifyParent: notifyParent,
              orientation: orientation,
            )));
      }
    } else {
      return SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: IntrinsicHeight(
              child: Controls(
            cookieManager,
            notifyParent: notifyParent,
            orientation: orientation,
          )));
    }
  }
}
