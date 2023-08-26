import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yaml/yaml.dart';

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
    log("Auto adjust success");
    if (needToaste)
      Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowSuccess);
    return true;
  }
  log("autoAdjustWindow fail");
  if (needToaste)
    Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowFail);
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
      log("obtaining webview size");
      getWebviewSizeCount++;
    } while (getWebviewSizeCount < 5);
    var resizeScale = 1.0;
    if (kWebviewHeight != 0.0 && kWebviewWidth != 0.0) {
      resizeScale = getResizeScale(kWebviewHeight, kWebviewWidth);
      autoAdjusted = true;
    } else {
      log("autoAdjustWindow fail");
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
    log("Auto adjust success");
    return true;
  }
  log("autoAdjustWindow fail");
  return false;
}

@Deprecated("old solution")
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
  String homeUrl = kLocalHomeUrl;
  if (kIsOpenSource) {
    homeUrl = kGameUrl;
  }
  if (enableAutoLoadHomeUrl && customHomeUrl.isNotEmpty) {
    homeUrl = customHomeUrl;
    if (!homeUrl.startsWith("http://") && !homeUrl.startsWith("https://")) {
      homeUrl = "https://$homeUrl";
    }
  }
  return homeUrl;
}

@Deprecated("old solution")
List<DeviceOrientation> getDeviceOrientation(int? index) {
  if (index == 0) return [DeviceOrientation.landscapeRight];
  if (index == 1) return [DeviceOrientation.landscapeLeft];
  if (index == 2)
    return [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
  if (index == 3)
    return [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft];
  return DeviceOrientation.values;
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

Uint8List convertStringToUint8List(String str) {
  final List<int> codeUnits = str.codeUnits;
  final Uint8List unit8List = Uint8List.fromList(codeUnits);
  return unit8List;
}

Future<String> get localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

List<int> getAllIndices<T>(List<T> list, T element) {
  List<int> indices = [];
  int index = -1;
  while (true) {
    index = list.indexOf(element, index + 1);
    if (index == -1) {
      break;
    }
    indices.add(index);
  }
  return indices;
}

bool isYaml(String input) {
  try {
    final yamlMap = loadYaml(input);
    return true;
  } catch (e) {
    return false;
  }
}

Future<dynamic> navigatorToCupertino<T>(BuildContext context, Widget content,
    {bool root = false}) {
  return Navigator.of(context, rootNavigator: root)
      .push<T>(CupertinoPageRoute(
    builder: (_) => content,
  ));
}

Duration parseTimeToDuration(String timeStr) {
  List<String> parts = timeStr.split(':');
  int hours = int.parse(parts[0]);
  int minutes = int.parse(parts[1]);
  int seconds = int.parse(parts[2]);

  return Duration(hours: hours, minutes: minutes, seconds: seconds);
}