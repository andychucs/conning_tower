import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  int? deviceOrientationValue= 0;
  deviceOrientationValue = prefs.getInt('userDeviceOrientation');
  List<DeviceOrientation> deviceOrientation = [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight];
  if(deviceOrientationValue == 1){
    deviceOrientation = [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown];
  }
  SystemChrome.setPreferredOrientations(deviceOrientation)
      .then((value) async => await SentryFlutter.init((options) async {
        options.dsn = await rootBundle.loadString('assets/config/sentry');
      }, appRunner: () => runApp(const ConnTowerApp())));
}
