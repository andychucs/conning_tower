import 'dart:io';
import 'dart:math';

import 'package:conning_tower/constants.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yaml/yaml.dart';

String getHomeUrl(String customHomeUrl, bool enableAutoLoadHomeUrl) {
  String homeUrl = kLocalHomeUrl;
  if (kReleaseChannel == ReleaseChannel.github) {
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
  return Navigator.of(context, rootNavigator: root).push<T>(CupertinoPageRoute(
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

Future<String> getFileSize(String filepath, int decimals) async {
  var file = File(filepath);
  int bytes = await file.length();
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  debugPrint('${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}');
  return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
}

Map<String, dynamic> parseRequestBody(String body) {
  Map<String, dynamic> params = {};
  final bodyDecode = Uri.decodeFull(body);
  bodyDecode.split("&").forEach((element) {
    // remove some secret or useless params
    if (element.contains("token") || element.contains("api_verno")) {
      return;
    }
    var key = element.split("=")[0];
    var value = element.split("=")[1];
    params[key] = value;
  });
  return params;
}

String getLanguageCode(Locale locale) {
  String languageCode = 'ja';
  if (locale.languageCode == 'en') {
    languageCode = 'en';
  } else if (locale.languageCode == 'zh') {
    if (locale.scriptCode == 'Hans') {
      languageCode = 'sc';
    } else if (locale.scriptCode == 'Hant') {
      languageCode = 'tc';
    }
  } else if (locale.languageCode == 'ko') {
    languageCode = 'ko';
  }
  return languageCode;
}