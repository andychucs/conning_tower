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

  /// `Web`
  String get ToolTitleWeb {
    return Intl.message(
      'Web',
      name: 'ToolTitleWeb',
      desc: '',
      args: [],
    );
  }

  /// `Game Sound`
  String get ToolTitleGameSound {
    return Intl.message(
      'Game Sound',
      name: 'ToolTitleGameSound',
      desc: '',
      args: [],
    );
  }

  /// `Game Screen`
  String get ToolTitleGameScreen {
    return Intl.message(
      'Game Screen',
      name: 'ToolTitleGameScreen',
      desc: '',
      args: [],
    );
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

  /// `Forward`
  String get AppForward {
    return Intl.message(
      'Forward',
      name: 'AppForward',
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

  /// `Conning Tower`
  String get AppName {
    return Intl.message(
      'Conning Tower',
      name: 'AppName',
      desc: '',
      args: [],
    );
  }

  /// `Admiral, welcome to the bridge, the bridge will make the Kancolle interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the 'Tools-Web-HTTP Redirect' button before you command.`
  String get AppNotify {
    return Intl.message(
      'Admiral, welcome to the bridge, the bridge will make the Kancolle interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the \'Tools-Web-HTTP Redirect\' button before you command.',
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

  /// `Resize to Fit Screen`
  String get AppResize {
    return Intl.message(
      'Resize to Fit Screen',
      name: 'AppResize',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get AppClearCookie {
    return Intl.message(
      'Logout',
      name: 'AppClearCookie',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cache`
  String get AppClearCache {
    return Intl.message(
      'Clear Cache',
      name: 'AppClearCache',
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

  /// `Don't show again`
  String get AlertNotShowAgain {
    return Intl.message(
      'Don\'t show again',
      name: 'AlertNotShowAgain',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get AboutButton {
    return Intl.message(
      'About',
      name: 'AboutButton',
      desc: '',
      args: [],
    );
  }

  /// `Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.`
  String get AboutDescription {
    return Intl.message(
      'Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.',
      name: 'AboutDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tools`
  String get ToolsButton {
    return Intl.message(
      'Tools',
      name: 'ToolsButton',
      desc: '',
      args: [],
    );
  }

  /// `Off`
  String get GameMute {
    return Intl.message(
      'Off',
      name: 'GameMute',
      desc: '',
      args: [],
    );
  }

  /// `On`
  String get GameUnmute {
    return Intl.message(
      'On',
      name: 'GameUnmute',
      desc: '',
      args: [],
    );
  }

  /// `Lock Screen Orientation`
  String get SettingsLockDeviceOrientation {
    return Intl.message(
      'Lock Screen Orientation',
      name: 'SettingsLockDeviceOrientation',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get SettingsButton {
    return Intl.message(
      'Settings',
      name: 'SettingsButton',
      desc: '',
      args: [],
    );
  }

  /// `Reset App`
  String get SettingsReset {
    return Intl.message(
      'Reset App',
      name: 'SettingsReset',
      desc: '',
      args: [],
    );
  }

  /// `Auto Open KanColle on Launch`
  String get SettingsHomeLoad {
    return Intl.message(
      'Auto Open KanColle on Launch',
      name: 'SettingsHomeLoad',
      desc: '',
      args: [],
    );
  }

  /// `Make Current Web Page as Home`
  String get SettingsHomeSave {
    return Intl.message(
      'Make Current Web Page as Home',
      name: 'SettingsHomeSave',
      desc: '',
      args: [],
    );
  }

  /// `Enable Auto Fullscreen`
  String get SettingsEnableAutoProcess {
    return Intl.message(
      'Enable Auto Fullscreen',
      name: 'SettingsEnableAutoProcess',
      desc: '',
      args: [],
    );
  }

  /// `Hide Floating Action Button`
  String get SettingsHideFAB {
    return Intl.message(
      'Hide Floating Action Button',
      name: 'SettingsHideFAB',
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

  /// `Cookies are gone, website logout success`
  String get AppLeftSideControlsLogoutSuccess {
    return Intl.message(
      'Cookies are gone, website logout success',
      name: 'AppLeftSideControlsLogoutSuccess',
      desc: '',
      args: [],
    );
  }

  /// `There are no cookies. May not need logout.`
  String get AppLeftSideControlsLogoutFailed {
    return Intl.message(
      'There are no cookies. May not need logout.',
      name: 'AppLeftSideControlsLogoutFailed',
      desc: '',
      args: [],
    );
  }

  /// `Cache cleared.`
  String get AppLeftSideControlsClearCache {
    return Intl.message(
      'Cache cleared.',
      name: 'AppLeftSideControlsClearCache',
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

  /// `Already in game window!`
  String get KCViewFuncMsgAlreadyGameRedirect {
    return Intl.message(
      'Already in game window!',
      name: 'KCViewFuncMsgAlreadyGameRedirect',
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

  /// `Game homepage is loading`
  String get KCViewFuncMsgGameNavi {
    return Intl.message(
      'Game homepage is loading',
      name: 'KCViewFuncMsgGameNavi',
      desc: '',
      args: [],
    );
  }

  /// `refresh on game homepage is block`
  String get KCViewFuncMsgGameNaviBlock {
    return Intl.message(
      'refresh on game homepage is block',
      name: 'KCViewFuncMsgGameNaviBlock',
      desc: '',
      args: [],
    );
  }

  /// `Game not load complete yet`
  String get KCViewFuncMsgNaviGameLoadNotCompleted {
    return Intl.message(
      'Game not load complete yet',
      name: 'KCViewFuncMsgNaviGameLoadNotCompleted',
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

  /// `For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click 'Tools-Web-HTTP Redirect' button.`
  String get MsgIOSNote {
    return Intl.message(
      'For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click \'Tools-Web-HTTP Redirect\' button.',
      name: 'MsgIOSNote',
      desc: '',
      args: [],
    );
  }

  /// `The game will be muted after refreshing.`
  String get MsgMuteGame {
    return Intl.message(
      'The game will be muted after refreshing.',
      name: 'MsgMuteGame',
      desc: '',
      args: [],
    );
  }

  /// `The game will be unmuted after refreshing.`
  String get MsgUnmuteGame {
    return Intl.message(
      'The game will be unmuted after refreshing.',
      name: 'MsgUnmuteGame',
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
