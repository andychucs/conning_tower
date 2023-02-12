import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

late SharedPreferences localStorage;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  localStorage = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations(DeviceOrientation.values)
      .then((value) async => await SentryFlutter.init((options) async {
            options.dsn = await rootBundle.loadString('assets/config/sentry');
          }, appRunner: () => runApp(const ConnTowerApp())));
}
