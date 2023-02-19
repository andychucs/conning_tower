import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

late SharedPreferences localStorage;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  localStorage = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations(DeviceOrientation.values)
      .then((value) => runApp(const ConnTowerApp()));
}
