import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool> autoAdjustWindowV2(InAppWebViewController controller,
    {bool force = false, bool needToaste = false}) async {
  //Adjust Kancolle window
  if ((inKancolleWindow && !autoAdjusted && enableAutoProcess) ||
      (force && inKancolleWindow)) {
    if (Platform.isIOS) {
      await controller.injectJavascriptFileFromAsset(
          assetFilePath: autoScaleIOSJS);
    } else if (Platform.isAndroid) {
      await controller.injectJavascriptFileFromAsset(
          assetFilePath: autoScaleAndroidJS);
    }
    autoAdjusted = true;
    print("Auto adjust success");
    if(needToaste) Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowSuccess);
    return true;
  }
  print("autoAdjustWindow fail");
  if(needToaste) Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowFail);
  return false;
}

@Deprecated("old solution")
Future<bool> autoAdjustWindow(
  InAppWebViewController controller,
) async {
  //Adjust Kancolle window
  if (inKancolleWindow && !autoAdjusted) {
    int getWebviewSizeCount = 0;
    do {
      kWebviewHeight = await controller
          .evaluateJavascript(source: '''window.innerHeight;''') as double;
      kWebviewWidth = await controller
          .evaluateJavascript(source: '''window.innerWidth;''') as double;
      if (kWebviewHeight == 0.0 || kWebviewWidth == 0.0) {
        await Future.delayed(const Duration(seconds: 2));
      } else {
        getWebviewSizeCount = 99;
      }
      print("obtaining webview size");
      getWebviewSizeCount++;
    } while (getWebviewSizeCount < 5);
    var resizeScale = 1.0;
    if (kWebviewHeight != 0.0 && kWebviewWidth != 0.0) {
      resizeScale = getResizeScale(kWebviewHeight, kWebviewWidth);
      autoAdjusted = true;
    } else {
      print("autoAdjustWindow fail");
      return false;
    }
    await controller.evaluateJavascript(
        source:
            '''document.getElementById("spacing_top").style.display = "none";''');
    if (Platform.isIOS) {
      await controller.evaluateJavascript(
          //Scale to correct size(ios webkit)
          source:
              '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
    } else if (Platform.isAndroid) {
      await controller.evaluateJavascript(
          //Scale to correct size(android chrome)
          source:
              '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
    }
    await Future.delayed(const Duration(seconds: 2));
    await controller.evaluateJavascript(
        source:
            '''document.getElementById("sectionWrap").style.display = "none";''');
    Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowSuccess);
    print("Auto adjust success");
    return true;
  }
  print("autoAdjustWindow fail");
  return false;
}

getResizeScale(double height, double width) {
  //Get Kancolle iframe resize scale
  var scale = (height * width) / kKancollePixel;
  if (scale < 0.5) {
    while (kKancolleWidth * scale < kWebviewWidth ||
        kKancolleHeight * scale < kWebviewHeight) {
      scale = scale + 0.05;
    }
    return scale;
  } else {
    while (kKancolleWidth * scale > kWebviewWidth ||
        kKancolleHeight * scale > kWebviewHeight) {
      scale = scale - 0.05;
    }
    return scale;
  }
}

String getHomeUrl() {
  String homeUrl = "http://localhost:8080/";

  if (enableAutoLoadHomeUrl && customHomeUrl.isNotEmpty) {
    homeUrl = customHomeUrl;
    if (!homeUrl.startsWith("http://") && !homeUrl.startsWith("https://")) {
      homeUrl = "https://$homeUrl";
    }
  }
  return homeUrl;
}

List<DeviceOrientation> getDeviceOrientation(int? index) {
  if (index == 0) return [DeviceOrientation.landscapeRight];
  if (index == 1) return [DeviceOrientation.landscapeLeft];
  if (index == 2)
    return [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
  if (index == 3)
    return [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft];
  return DeviceOrientation.values;
}

enum DeviceType {
  iPhone,
  iPad,
  iPod,
  mac,
  windows,
  android,
  linux,
  fuchsia,
  undefined
}

Future<DeviceType> getDeviceType() async {
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return DeviceType.android;
    case TargetPlatform.fuchsia:
      return DeviceType.fuchsia;
    case TargetPlatform.iOS:
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      if (iosDeviceInfo.model.toLowerCase() == "ipad") {
        return DeviceType.iPad;
      } else if (iosDeviceInfo.model.toLowerCase() == "ipod touch") {
        return DeviceType.iPod;
      }
      return DeviceType.iPhone;
    case TargetPlatform.linux:
      return DeviceType.linux;
    case TargetPlatform.macOS:
      return DeviceType.mac;
    case TargetPlatform.windows:
      return DeviceType.windows;
  }
}
