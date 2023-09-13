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

  /// `About`
  String get AboutButton {
    return Intl.message(
      'About',
      name: 'AboutButton',
      desc: '',
      args: [],
    );
  }

  /// `Contributors`
  String get AboutContributors {
    return Intl.message(
      'Contributors',
      name: 'AboutContributors',
      desc: '',
      args: [],
    );
  }

  /// `Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.`
  String get AboutDescriptionOpen {
    return Intl.message(
      'Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.',
      name: 'AboutDescriptionOpen',
      desc: '',
      args: [],
    );
  }

  /// `ConningTower for iOS is a browser designed specifically for playing browser games. It lets you customize your screen and stay in landscape mode with desktop view at all times.`
  String get AboutDescriptionStore {
    return Intl.message(
      'ConningTower for iOS is a browser designed specifically for playing browser games. It lets you customize your screen and stay in landscape mode with desktop view at all times.',
      name: 'AboutDescriptionStore',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get AboutVersion {
    return Intl.message(
      'Version',
      name: 'AboutVersion',
      desc: '',
      args: [],
    );
  }

  /// `Add Data Source`
  String get AddDataSource {
    return Intl.message(
      'Add Data Source',
      name: 'AddDataSource',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Game Support`
  String get AdvancedGameSupport {
    return Intl.message(
      'Advanced Game Support',
      name: 'AdvancedGameSupport',
      desc: '',
      args: [],
    );
  }

  /// `Our team does not operate any games. This feature is based on publicly available data, third-party libraries, and web runtime environments, and its accuracy cannot be guaranteed. If you have games or features you would like us to support, please feel free to contact technical support.`
  String get AdvancedGameSupportDescription {
    return Intl.message(
      'Our team does not operate any games. This feature is based on publicly available data, third-party libraries, and web runtime environments, and its accuracy cannot be guaranteed. If you have games or features you would like us to support, please feel free to contact technical support.',
      name: 'AdvancedGameSupportDescription',
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

  /// `Back`
  String get AppBack {
    return Intl.message(
      'Back',
      name: 'AppBack',
      desc: '',
      args: [],
    );
  }

  /// `Add Bottom Padding`
  String get AppBottomSafe {
    return Intl.message(
      'Add Bottom Padding',
      name: 'AppBottomSafe',
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

  /// `Clear Cookie`
  String get AppClearCookie {
    return Intl.message(
      'Clear Cookie',
      name: 'AppClearCookie',
      desc: '',
      args: [],
    );
  }

  /// `Cache cleared.`
  String get AppControlsClearCache {
    return Intl.message(
      'Cache cleared.',
      name: 'AppControlsClearCache',
      desc: '',
      args: [],
    );
  }

  /// `Hide Sidebar`
  String get AppControlsHide {
    return Intl.message(
      'Hide Sidebar',
      name: 'AppControlsHide',
      desc: '',
      args: [],
    );
  }

  /// `Load URL: {url}`
  String AppControlsLoad(Object url) {
    return Intl.message(
      'Load URL: $url',
      name: 'AppControlsLoad',
      desc: '',
      args: [url],
    );
  }

  /// `There are no cookies. May not need logout.`
  String get AppControlsLogoutFailed {
    return Intl.message(
      'There are no cookies. May not need logout.',
      name: 'AppControlsLogoutFailed',
      desc: '',
      args: [],
    );
  }

  /// `Cookies are gone, website logout success`
  String get AppControlsLogoutSuccess {
    return Intl.message(
      'Cookies are gone, website logout success',
      name: 'AppControlsLogoutSuccess',
      desc: '',
      args: [],
    );
  }

  /// `WebView not ready`
  String get AppControlsNotReady {
    return Intl.message(
      'WebView not ready',
      name: 'AppControlsNotReady',
      desc: '',
      args: [],
    );
  }

  /// `Reload`
  String get AppControlsReload {
    return Intl.message(
      'Reload',
      name: 'AppControlsReload',
      desc: '',
      args: [],
    );
  }

  /// `Scroll down`
  String get AppControlsScrollDown {
    return Intl.message(
      'Scroll down',
      name: 'AppControlsScrollDown',
      desc: '',
      args: [],
    );
  }

  /// `Scroll up`
  String get AppControlsScrollUp {
    return Intl.message(
      'Scroll up',
      name: 'AppControlsScrollUp',
      desc: '',
      args: [],
    );
  }

  /// `Show Sidebar`
  String get AppControlsShow {
    return Intl.message(
      'Show Sidebar',
      name: 'AppControlsShow',
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

  /// `Clean Layout`
  String get AppLayoutClean {
    return Intl.message(
      'Clean Layout',
      name: 'AppLayoutClean',
      desc: '',
      args: [],
    );
  }

  /// `Joystick and Floating Action Button`
  String get AppLayoutJoystickAndFAB {
    return Intl.message(
      'Joystick and Floating Action Button',
      name: 'AppLayoutJoystickAndFAB',
      desc: '',
      args: [],
    );
  }

  /// `Multi-Function Button and Floating Action Button`
  String get AppLayoutMultiFunctionAndFAB {
    return Intl.message(
      'Multi-Function Button and Floating Action Button',
      name: 'AppLayoutMultiFunctionAndFAB',
      desc: '',
      args: [],
    );
  }

  /// `Multi-Function Button`
  String get AppLayoutMultiFunctionButton {
    return Intl.message(
      'Multi-Function Button',
      name: 'AppLayoutMultiFunctionButton',
      desc: '',
      args: [],
    );
  }

  /// `Only Floating Action Button`
  String get AppLayoutOnlyFAB {
    return Intl.message(
      'Only Floating Action Button',
      name: 'AppLayoutOnlyFAB',
      desc: '',
      args: [],
    );
  }

  /// `Only Joystick`
  String get AppLayoutOnlyJoystick {
    return Intl.message(
      'Only Joystick',
      name: 'AppLayoutOnlyJoystick',
      desc: '',
      args: [],
    );
  }

  /// `App Layout Setting`
  String get AppLayoutSetting {
    return Intl.message(
      'App Layout Setting',
      name: 'AppLayoutSetting',
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

  /// `Notification Management`
  String get AppNotificationManagement {
    return Intl.message(
      'Notification Management',
      name: 'AppNotificationManagement',
      desc: '',
      args: [],
    );
  }

  /// `Admiral, welcome to the bridge, the bridge will make the game interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the 'Tools-Web-HTTP Redirect' button before you command.`
  String get AppNotify {
    return Intl.message(
      'Admiral, welcome to the bridge, the bridge will make the game interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the \'Tools-Web-HTTP Redirect\' button before you command.',
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

  /// `Rate on App Store`
  String get AppStoreRating {
    return Intl.message(
      'Rate on App Store',
      name: 'AppStoreRating',
      desc: '',
      args: [],
    );
  }

  /// `Go`
  String get AssetsHtmlSearchBarGo {
    return Intl.message(
      'Go',
      name: 'AssetsHtmlSearchBarGo',
      desc: '',
      args: [],
    );
  }

  /// `Search or enter website name`
  String get AssetsHtmlSearchBarText {
    return Intl.message(
      'Search or enter website name',
      name: 'AssetsHtmlSearchBarText',
      desc: '',
      args: [],
    );
  }

  /// `Clear All Pending Notifications`
  String get ClearAllPendingNotifications {
    return Intl.message(
      'Clear All Pending Notifications',
      name: 'ClearAllPendingNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get DarkTheme {
    return Intl.message(
      'Dark Theme',
      name: 'DarkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Show Dashboard on Homepage`
  String get DashboardSetting {
    return Intl.message(
      'Show Dashboard on Homepage',
      name: 'DashboardSetting',
      desc: '',
      args: [],
    );
  }

  /// `To use the KanColle Data Listener feature, go to Settings → KanColle Data Listener, download the data, and turn on the switch (if not already on). In case of any issues, reset the app data in Settings.`
  String get DataDownloadGuide {
    return Intl.message(
      'To use the KanColle Data Listener feature, go to Settings → KanColle Data Listener, download the data, and turn on the switch (if not already on). In case of any issues, reset the app data in Settings.',
      name: 'DataDownloadGuide',
      desc: '',
      args: [],
    );
  }

  /// `https://conntower.github.io/docs/en/new`
  String get DocsNewUrl {
    return Intl.message(
      'https://conntower.github.io/docs/en/new',
      name: 'DocsNewUrl',
      desc: '',
      args: [],
    );
  }

  /// `Download Fleet Data`
  String get DownloadFleetData {
    return Intl.message(
      'Download Fleet Data',
      name: 'DownloadFleetData',
      desc: '',
      args: [],
    );
  }

  /// `Download Expedition Data`
  String get DownloadOperationData {
    return Intl.message(
      'Download Expedition Data',
      name: 'DownloadOperationData',
      desc: '',
      args: [],
    );
  }

  /// `Field cannot be empty.`
  String get EmptyFieldError {
    return Intl.message(
      'Field cannot be empty.',
      name: 'EmptyFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get Error {
    return Intl.message(
      'Error',
      name: 'Error',
      desc: '',
      args: [],
    );
  }

  /// `Fleet Data`
  String get FleetData {
    return Intl.message(
      'Fleet Data',
      name: 'FleetData',
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

  /// `Game`
  String get Game {
    return Intl.message(
      'Game',
      name: 'Game',
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

  /// `Invalid JSON format.`
  String get InvalidJsonError {
    return Intl.message(
      'Invalid JSON format.',
      name: 'InvalidJsonError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid URL.`
  String get InvalidUrlError {
    return Intl.message(
      'Invalid URL.',
      name: 'InvalidUrlError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid YAML format.`
  String get InvalidYamlError {
    return Intl.message(
      'Invalid YAML format.',
      name: 'InvalidYamlError',
      desc: '',
      args: [],
    );
  }

  /// `JSON Example:`
  String get JsonExample {
    return Intl.message(
      'JSON Example:',
      name: 'JsonExample',
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

  /// `Loaded in game window!`
  String get KCViewFuncMsgAutoGameRedirect {
    return Intl.message(
      'Loaded in game window!',
      name: 'KCViewFuncMsgAutoGameRedirect',
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

  /// `Game not load complete yet`
  String get KCViewFuncMsgNaviGameLoadNotCompleted {
    return Intl.message(
      'Game not load complete yet',
      name: 'KCViewFuncMsgNaviGameLoadNotCompleted',
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

  /// `Data Listener`
  String get KanColleDataListener {
    return Intl.message(
      'Data Listener',
      name: 'KanColleDataListener',
      desc: '',
      args: [],
    );
  }

  /// `Light Theme`
  String get LightTheme {
    return Intl.message(
      'Light Theme',
      name: 'LightTheme',
      desc: '',
      args: [],
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

  /// `Expedition Data`
  String get OperationData {
    return Intl.message(
      'Expedition Data',
      name: 'OperationData',
      desc: '',
      args: [],
    );
  }

  /// `Pending Notifications Count`
  String get PendingNotificationCount {
    return Intl.message(
      'Pending Notifications Count',
      name: 'PendingNotificationCount',
      desc: '',
      args: [],
    );
  }

  /// `Pending Notifications`
  String get PendingNotifications {
    return Intl.message(
      'Pending Notifications',
      name: 'PendingNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Album`
  String get PhotoAlbum {
    return Intl.message(
      'Album',
      name: 'PhotoAlbum',
      desc: '',
      args: [],
    );
  }

  /// `To display photos in the app, please allow access.`
  String get PhotoAlbumPermissionDescription {
    return Intl.message(
      'To display photos in the app, please allow access.',
      name: 'PhotoAlbumPermissionDescription',
      desc: '',
      args: [],
    );
  }

  /// `If photos are not displayed, please open the access permission in system settings.`
  String get PhotoAlbumPermissionReminder {
    return Intl.message(
      'If photos are not displayed, please open the access permission in system settings.',
      name: 'PhotoAlbumPermissionReminder',
      desc: '',
      args: [],
    );
  }

  /// `Open System Settings`
  String get PhotoAlbumPermissionRequest {
    return Intl.message(
      'Open System Settings',
      name: 'PhotoAlbumPermissionRequest',
      desc: '',
      args: [],
    );
  }

  /// `Screenshot save failed. Please allow Conning Tower to access Photos in the System Settings.`
  String get ScreenshotFailDialog {
    return Intl.message(
      'Screenshot save failed. Please allow Conning Tower to access Photos in the System Settings.',
      name: 'ScreenshotFailDialog',
      desc: '',
      args: [],
    );
  }

  /// `Screenshot saved.`
  String get ScreenshotSuccessDialog {
    return Intl.message(
      'Screenshot saved.',
      name: 'ScreenshotSuccessDialog',
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

  /// `Auto Open Homepage URL on Launch`
  String get SettingsHomeLoad {
    return Intl.message(
      'Auto Open Homepage URL on Launch',
      name: 'SettingsHomeLoad',
      desc: '',
      args: [],
    );
  }

  /// `Auto Load`
  String get SettingsHomeLoadShort {
    return Intl.message(
      'Auto Load',
      name: 'SettingsHomeLoadShort',
      desc: '',
      args: [],
    );
  }

  /// `Make Current Web Page as Homepage URL`
  String get SettingsHomeSave {
    return Intl.message(
      'Make Current Web Page as Homepage URL',
      name: 'SettingsHomeSave',
      desc: '',
      args: [],
    );
  }

  /// `Homepage`
  String get SettingsHomeSaveShort {
    return Intl.message(
      'Homepage',
      name: 'SettingsHomeSaveShort',
      desc: '',
      args: [],
    );
  }

  /// `Landscape`
  String get SettingsLandscape {
    return Intl.message(
      'Landscape',
      name: 'SettingsLandscape',
      desc: '',
      args: [],
    );
  }

  /// `Landscape Left`
  String get SettingsLandscapeLeft {
    return Intl.message(
      'Landscape Left',
      name: 'SettingsLandscapeLeft',
      desc: '',
      args: [],
    );
  }

  /// `Landscape Right`
  String get SettingsLandscapeRight {
    return Intl.message(
      'Landscape Right',
      name: 'SettingsLandscapeRight',
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

  /// `Not Available for iPad`
  String get SettingsLockDeviceOrientationTip {
    return Intl.message(
      'Not Available for iPad',
      name: 'SettingsLockDeviceOrientationTip',
      desc: '',
      args: [],
    );
  }

  /// `Portrait`
  String get SettingsPortrait {
    return Intl.message(
      'Portrait',
      name: 'SettingsPortrait',
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

  /// `Change Screen Orientation`
  String get SettingsScreenOrientation {
    return Intl.message(
      'Change Screen Orientation',
      name: 'SettingsScreenOrientation',
      desc: '',
      args: [],
    );
  }

  /// `Ship Data`
  String get ShipData {
    return Intl.message(
      'Ship Data',
      name: 'ShipData',
      desc: '',
      args: [],
    );
  }

  /// `Status Code`
  String get StatusCode {
    return Intl.message(
      'Status Code',
      name: 'StatusCode',
      desc: '',
      args: [],
    );
  }

  /// `System Theme`
  String get SystemTheme {
    return Intl.message(
      'System Theme',
      name: 'SystemTheme',
      desc: '',
      args: [],
    );
  }

  /// `Screenshot`
  String get TakeScreenshot {
    return Intl.message(
      'Screenshot',
      name: 'TakeScreenshot',
      desc: '',
      args: [],
    );
  }

  /// `{taskTitle} has been completed.`
  String TaskCompleted(Object taskTitle) {
    return Intl.message(
      '$taskTitle has been completed.',
      name: 'TaskCompleted',
      desc: '',
      args: [taskTitle],
    );
  }

  /// `Tasks`
  String get TaskDashboardTitle {
    return Intl.message(
      'Tasks',
      name: 'TaskDashboardTitle',
      desc: '',
      args: [],
    );
  }

  /// `Task Not Added`
  String get TaskNotAdded {
    return Intl.message(
      'Task Not Added',
      name: 'TaskNotAdded',
      desc: '',
      args: [],
    );
  }

  /// `Task Notification Added Successfully`
  String get TaskNotificationAdded {
    return Intl.message(
      'Task Notification Added Successfully',
      name: 'TaskNotificationAdded',
      desc: '',
      args: [],
    );
  }

  /// `To enable push notifications for the following tasks, please tap this item`
  String get TaskPageOperationTip {
    return Intl.message(
      'To enable push notifications for the following tasks, please tap this item',
      name: 'TaskPageOperationTip',
      desc: '',
      args: [],
    );
  }

  /// `Tasks Timer`
  String get TaskPageTitle {
    return Intl.message(
      'Tasks Timer',
      name: 'TaskPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Task Reminders`
  String get TaskReminders {
    return Intl.message(
      'Task Reminders',
      name: 'TaskReminders',
      desc: '',
      args: [],
    );
  }

  /// `The Task Reminders feature allows you to add and manage task reminders.\n\n- To add a data source, click the Add data source button in the top right corner and enter a valid URL or YAML/JSON content.\n\n- To save changes, click the Save button.\n\n- Added tasks will be displayed in the list.\n\n- Double clicking on a task will add a reminder notification for that task.\n\n- Clicking on a task to enter the task information page where you can view detailed information.\n\n- In the task information page, click the Up-Arrow button in the top right corner to pin the task at the top of the task list.\n\n- If you encounter any issues, please contact our support team.\n\nEnjoy using it!`
  String get TaskRemindersHelpContent {
    return Intl.message(
      'The Task Reminders feature allows you to add and manage task reminders.\n\n- To add a data source, click the Add data source button in the top right corner and enter a valid URL or YAML/JSON content.\n\n- To save changes, click the Save button.\n\n- Added tasks will be displayed in the list.\n\n- Double clicking on a task will add a reminder notification for that task.\n\n- Clicking on a task to enter the task information page where you can view detailed information.\n\n- In the task information page, click the Up-Arrow button in the top right corner to pin the task at the top of the task list.\n\n- If you encounter any issues, please contact our support team.\n\nEnjoy using it!',
      name: 'TaskRemindersHelpContent',
      desc: '',
      args: [],
    );
  }

  /// `request tasks number over limit.`
  String get TasksNumOverLimit {
    return Intl.message(
      'request tasks number over limit.',
      name: 'TasksNumOverLimit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get TextCancel {
    return Intl.message(
      'Cancel',
      name: 'TextCancel',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get TextHelp {
    return Intl.message(
      'Help',
      name: 'TextHelp',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get TextId {
    return Intl.message(
      'ID',
      name: 'TextId',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get TextNo {
    return Intl.message(
      'No',
      name: 'TextNo',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get TextSave {
    return Intl.message(
      'Save',
      name: 'TextSave',
      desc: '',
      args: [],
    );
  }

  /// `Should Close?`
  String get TextShouldClose {
    return Intl.message(
      'Should Close?',
      name: 'TextShouldClose',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get TextTag {
    return Intl.message(
      'Tag',
      name: 'TextTag',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get TextTime {
    return Intl.message(
      'Time',
      name: 'TextTime',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get TextTitle {
    return Intl.message(
      'Title',
      name: 'TextTitle',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get TextYes {
    return Intl.message(
      'Yes',
      name: 'TextYes',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get Theme {
    return Intl.message(
      'Theme',
      name: 'Theme',
      desc: '',
      args: [],
    );
  }

  /// `Homepage URL removed`
  String get ToolSaveHomeCancel {
    return Intl.message(
      'Homepage URL removed',
      name: 'ToolSaveHomeCancel',
      desc: '',
      args: [],
    );
  }

  /// `Invalid URL`
  String get ToolSaveHomeFail {
    return Intl.message(
      'Invalid URL',
      name: 'ToolSaveHomeFail',
      desc: '',
      args: [],
    );
  }

  /// `Homepage URL saved`
  String get ToolSaveHomeSuccess {
    return Intl.message(
      'Homepage URL saved',
      name: 'ToolSaveHomeSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Edit Homepage URL`
  String get ToolSearchBarURLSetting {
    return Intl.message(
      'Edit Homepage URL',
      name: 'ToolSearchBarURLSetting',
      desc: '',
      args: [],
    );
  }

  /// `WebView Screen`
  String get ToolTitleGameScreen {
    return Intl.message(
      'WebView Screen',
      name: 'ToolTitleGameScreen',
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

  /// `Utilities`
  String get ToolTitleUtilities {
    return Intl.message(
      'Utilities',
      name: 'ToolTitleUtilities',
      desc: '',
      args: [],
    );
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

  /// `Edit UserAgent`
  String get ToolUASetting {
    return Intl.message(
      'Edit UserAgent',
      name: 'ToolUASetting',
      desc: '',
      args: [],
    );
  }

  /// `Need Relaunch App to Active`
  String get ToolUATip {
    return Intl.message(
      'Need Relaunch App to Active',
      name: 'ToolUATip',
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

  /// `URL Example:`
  String get UrlExample {
    return Intl.message(
      'URL Example:',
      name: 'UrlExample',
      desc: '',
      args: [],
    );
  }

  /// `The response from the URL request must be in JSON format and have a structure consistent with the example response above.`
  String get UrlRequestFormat {
    return Intl.message(
      'The response from the URL request must be in JSON format and have a structure consistent with the example response above.',
      name: 'UrlRequestFormat',
      desc: '',
      args: [],
    );
  }

  /// `Software version update found, please check the version update document.`
  String get VersionUpdateContent {
    return Intl.message(
      'Software version update found, please check the version update document.',
      name: 'VersionUpdateContent',
      desc: '',
      args: [],
    );
  }

  /// `Click here to view`
  String get VersionUpdateLinkText {
    return Intl.message(
      'Click here to view',
      name: 'VersionUpdateLinkText',
      desc: '',
      args: [],
    );
  }

  /// `Version Update`
  String get VersionUpdateTitle {
    return Intl.message(
      'Version Update',
      name: 'VersionUpdateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Weapon Data`
  String get WeaponData {
    return Intl.message(
      'Weapon Data',
      name: 'WeaponData',
      desc: '',
      args: [],
    );
  }

  /// `Web Info`
  String get WebInfo {
    return Intl.message(
      'Web Info',
      name: 'WebInfo',
      desc: '',
      args: [],
    );
  }

  /// `YAML Example:`
  String get YamlExample {
    return Intl.message(
      'YAML Example:',
      name: 'YamlExample',
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
