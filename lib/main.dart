import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp
  ]).then((value) async => await SentryFlutter.init((options) async {
        options.dsn = await rootBundle.loadString('assets/config/sentry');
      }, appRunner: () => runApp(const ConnTowerApp())));
}
