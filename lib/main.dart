import 'package:conning_tower/app.dart';
import 'package:conning_tower/constants.dart';
import 'package:conning_tower/firebase_options.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/utils/asset_loader.dart';
import 'package:conning_tower/utils/objectbox.dart';
import 'package:conning_tower/utils/logger.dart';
import 'package:conning_tower/utils/notification_util.dart';
import 'package:conning_tower/utils/path_util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stack_trace/stack_trace.dart';

late SharedPreferences localStorage;
final InAppLocalhostServer localhostServer = InAppLocalhostServer(port: 8686,
    documentRoot: 'assets/www', directoryIndex: 'home.html');
late bool safeNavi;
late int selectedIndex;
late DeviceType deviceType;
late ObjectBox objectbox;
late PathUtil pathUtil;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  pathUtil = await PathUtil.create();
  objectbox = await ObjectBox.create();
  if (!kIsWeb && kReleaseChannel == ReleaseChannel.store) {
    // start the localhost server
    await localhostServer.start();
  }

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(true);
    await InAppWebViewController.enableSlowWholeDocumentDraw();
  }
  await notification.init();

  await init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  SystemChrome.setPreferredOrientations(DeviceOrientation.values).then(
    (value) => runApp(
      ProviderScope(
        observers: [Logger()],
        child: const ConnTowerApp(),
      ),
    ),
  );

  FlutterError.demangleStackTrace = (StackTrace stack) {
    // Trace and Chain are classes in package:stack_trace
    if (stack is Trace) {
      return stack.vmTrace;
    }
    if (stack is Chain) {
      return stack.toTrace().vmTrace;
    }
    return stack;
  };
}

Future<void> init() async {
  localStorage = await SharedPreferences.getInstance();

  deviceType = await getDeviceType();

  await AssetLoader.init();

  safeNavi = false;
  selectedIndex = 0;
}
