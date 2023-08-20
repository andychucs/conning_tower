import 'package:conning_tower/app.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences localStorage;
final InAppLocalhostServer localhostServer = InAppLocalhostServer(port: 8686,
    documentRoot: 'assets/www', directoryIndex: 'home.html');
late bool safeNavi;
late bool autoAdjusted;
late bool bottomPadding;
late bool gameLoadCompleted;
late bool inKancolleWindow;
late bool beforeRedirect;
late double kWebviewHeight;
late double kWebviewWidth;
late int selectedIndex;
late bool enableAutoProcess;
late bool enableAutoLoadHomeUrl;
late String customHomeUrl;
late String customUA;
late bool enableHideFAB;
late bool showControls;
late DeviceType deviceType;
late AppLayout appLayout;
late bool showDashboardInHome; //Canary Deployment

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && !kIsOpenSource) {
    // start the localhost server
    await localhostServer.start();
  }

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  WebView.debugLoggingSettings.enabled = false;
  await notification.init();

  await init();

  SystemChrome.setPreferredOrientations(DeviceOrientation.values)
      .then((value) => runApp(const ProviderScope(child: ConnTowerApp())));
}

Future<void> init() async {
  localStorage = await SharedPreferences.getInstance();

  deviceType = await getDeviceType();
  appLayout = AppLayout.onlyFAB;

  gameLoadCompleted = false;
  inKancolleWindow = false;
  autoAdjusted = false;
  kWebviewHeight = 0.0;
  kWebviewWidth = 0.0;
  safeNavi = false;
  bottomPadding = false;
  selectedIndex = 0;
  enableAutoLoadHomeUrl = true;
  customHomeUrl = kGameUrl;
  customUA = '';
  enableAutoProcess = true;
  enableHideFAB = false;
  showControls = true;
  showDashboardInHome = true;
}
