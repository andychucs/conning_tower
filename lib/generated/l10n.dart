// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Back`
  String get AppBack {
    return Intl.message(
      'Back',
      name: 'AppBack',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get AppHome {
    return Intl.message(
      'Home',
      name: 'AppHome',
      desc: '',
      args: [],
    );
  }

  /// `Bridge`
  String get AppName {
    return Intl.message(
      'Bridge',
      name: 'AppName',
      desc: '',
      args: [],
    );
  }

  /// `Admiral, welcome to the bridge, the bridge will make the Kancolle interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the HTTP Redirect button before you command.`
  String get AppNotify {
    return Intl.message(
      'Admiral, welcome to the bridge, the bridge will make the Kancolle interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the HTTP Redirect button before you command.',
      name: 'AppNotify',
      desc: '',
      args: [],
    );
  }

  /// `HTTP Redirect`
  String get AppRedirect {
    return Intl.message(
      'HTTP Redirect',
      name: 'AppRedirect',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get AppRefresh {
    return Intl.message(
      'Refresh',
      name: 'AppRefresh',
      desc: '',
      args: [],
    );
  }

  /// `Resize`
  String get AppResize {
    return Intl.message(
      'Resize',
      name: 'AppResize',
      desc: '',
      args: [],
    );
  }

  /// `Bottom-up`
  String get AppBottomSafe {
    return Intl.message(
      'Bottom-up',
      name: 'AppBottomSafe',
      desc: '',
      args: [],
    );
  }

  /// `Load URL: {url}`
  String AppLeftSideControlsLoad(Object url) {
    return Intl.message(
      'Load URL: $url',
      name: 'AppLeftSideControlsLoad',
      desc: '',
      args: [url],
    );
  }

  /// `WebView not ready`
  String get AppLeftSideControlsNotReady {
    return Intl.message(
      'WebView not ready',
      name: 'AppLeftSideControlsNotReady',
      desc: '',
      args: [],
    );
  }

  /// `Scroll down`
  String get AppLeftSideControlsScrollDown {
    return Intl.message(
      'Scroll down',
      name: 'AppLeftSideControlsScrollDown',
      desc: '',
      args: [],
    );
  }

  /// `Scroll up`
  String get AppLeftSideControlsScrollUp {
    return Intl.message(
      'Scroll up',
      name: 'AppLeftSideControlsScrollUp',
      desc: '',
      args: [],
    );
  }

  /// `Scroll Down`
  String get AppScrollDown {
    return Intl.message(
      'Scroll Down',
      name: 'AppScrollDown',
      desc: '',
      args: [],
    );
  }

  /// `Scroll Up`
  String get AppScrollUp {
    return Intl.message(
      'Scroll Up',
      name: 'AppScrollUp',
      desc: '',
      args: [],
    );
  }

  /// `Fullscreen fail`
  String get FutureAutoAdjustWindowFail {
    return Intl.message(
      'Fullscreen fail',
      name: 'FutureAutoAdjustWindowFail',
      desc: '',
      args: [],
    );
  }

  /// `Fullscreen success`
  String get FutureAutoAdjustWindowSuccess {
    return Intl.message(
      'Fullscreen success',
      name: 'FutureAutoAdjustWindowSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Loaded in game window!`
  String get KCViewFuncMsgAutoGameRedirect {
    return Intl.message(
      'Loaded in game window!',
      name: 'KCViewFuncMsgAutoGameRedirect',
      desc: '',
      args: [],
    );
  }

  /// `Now navigation to {url}`
  String KCViewFuncMsgNavi(Object url) {
    return Intl.message(
      'Now navigation to $url',
      name: 'KCViewFuncMsgNavi',
      desc: '',
      args: [url],
    );
  }

  /// `Game load completed`
  String get KCViewFuncMsgNaviGameLoadCompleted {
    return Intl.message(
      'Game load completed',
      name: 'KCViewFuncMsgNaviGameLoadCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Game load failed`
  String get KCViewFuncMsgNaviGameLoadFailed {
    return Intl.message(
      'Game load failed',
      name: 'KCViewFuncMsgNaviGameLoadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Page finished loading: {url}`
  String KCViewFuncMsgPageFinished(Object url) {
    return Intl.message(
      'Page finished loading: $url',
      name: 'KCViewFuncMsgPageFinished',
      desc: '',
      args: [url],
    );
  }

  /// `is game origin url`
  String get KCViewFuncMsgPageFinishedIsGame {
    return Intl.message(
      'is game origin url',
      name: 'KCViewFuncMsgPageFinishedIsGame',
      desc: '',
      args: [],
    );
  }

  /// `Page started loading: {url}`
  String KCViewFuncMsgPageStart(Object url) {
    return Intl.message(
      'Page started loading: $url',
      name: 'KCViewFuncMsgPageStart',
      desc: '',
      args: [url],
    );
  }

  /// `For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click HTTP Redirect button.`
  String get MsgIOSNote {
    return Intl.message(
      'For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click HTTP Redirect button.',
      name: 'MsgIOSNote',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
