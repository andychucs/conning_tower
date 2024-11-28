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

  /// `Active Main Web Page`
  String get ActiveMainWebPage {
    return Intl.message(
      'Active Main Web Page',
      name: 'ActiveMainWebPage',
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

  /// `To use the KanColle Data Listener feature, go to Tools → Advanced Game Support, download the data, and turn on the switch (if not already on). In case of any issues, reset the app data in Settings.`
  String get DataDownloadGuide {
    return Intl.message(
      'To use the KanColle Data Listener feature, go to Tools → Advanced Game Support, download the data, and turn on the switch (if not already on). In case of any issues, reset the app data in Settings.',
      name: 'DataDownloadGuide',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while parsing data.The data features will not work well. Please contact developer. Also, it may be caused by a network error.`
  String get DataErrorNotice {
    return Intl.message(
      'Error occurred while parsing data.The data features will not work well. Please contact developer. Also, it may be caused by a network error.',
      name: 'DataErrorNotice',
      desc: '',
      args: [],
    );
  }

  /// `Desktop Mode`
  String get DesktopMode {
    return Intl.message(
      'Desktop Mode',
      name: 'DesktopMode',
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

  /// `Akashi Studio`
  String get KCAkashiStudio {
    return Intl.message(
      'Akashi Studio',
      name: 'KCAkashiStudio',
      desc: '',
      args: [],
    );
  }

  /// `Resources sustained losses`
  String get KCBattleAirbaseResourceLostLevel1 {
    return Intl.message(
      'Resources sustained losses',
      name: 'KCBattleAirbaseResourceLostLevel1',
      desc: '',
      args: [],
    );
  }

  /// `Resources and land-based air squadrons sustained losses`
  String get KCBattleAirbaseResourceLostLevel2 {
    return Intl.message(
      'Resources and land-based air squadrons sustained losses',
      name: 'KCBattleAirbaseResourceLostLevel2',
      desc: '',
      args: [],
    );
  }

  /// `Land-based air squadrons sustained losses`
  String get KCBattleAirbaseResourceLostLevel3 {
    return Intl.message(
      'Land-based air squadrons sustained losses',
      name: 'KCBattleAirbaseResourceLostLevel3',
      desc: '',
      args: [],
    );
  }

  /// `No damage was inflicted`
  String get KCBattleAirbaseResourceLostLevel4 {
    return Intl.message(
      'No damage was inflicted',
      name: 'KCBattleAirbaseResourceLostLevel4',
      desc: '',
      args: [],
    );
  }

  /// `Debuff mechanism has taken effect!`
  String get KCBattleDebuffUnlock {
    return Intl.message(
      'Debuff mechanism has taken effect!',
      name: 'KCBattleDebuffUnlock',
      desc: '',
      args: [],
    );
  }

  /// `Battle Finish`
  String get KCBattleFinish {
    return Intl.message(
      'Battle Finish',
      name: 'KCBattleFinish',
      desc: '',
      args: [],
    );
  }

  /// `Maps`
  String get KCDashboardBattleAllMap {
    return Intl.message(
      'Maps',
      name: 'KCDashboardBattleAllMap',
      desc: '',
      args: [],
    );
  }

  /// `Currently, only the battle data of air combat, anti-submarine warfare, artillery battle, and torpedo battle in regular fleet versus regular fleet can be analyzed.`
  String get KCDashboardBattleDescription {
    return Intl.message(
      'Currently, only the battle data of air combat, anti-submarine warfare, artillery battle, and torpedo battle in regular fleet versus regular fleet can be analyzed.',
      name: 'KCDashboardBattleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Last Chosen: {data}`
  String KCDashboardBattleLastChosen(Object data) {
    return Intl.message(
      'Last Chosen: $data',
      name: 'KCDashboardBattleLastChosen',
      desc: '',
      args: [data],
    );
  }

  /// `Cleared`
  String get KCDashboardBattleMapStateCleared {
    return Intl.message(
      'Cleared',
      name: 'KCDashboardBattleMapStateCleared',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get KCDashboardBattleReport {
    return Intl.message(
      'Report',
      name: 'KCDashboardBattleReport',
      desc: '',
      args: [],
    );
  }

  /// `Command`
  String get KCDashboardCommand {
    return Intl.message(
      'Command',
      name: 'KCDashboardCommand',
      desc: '',
      args: [],
    );
  }

  /// `Fleet`
  String get KCDashboardFleet {
    return Intl.message(
      'Fleet',
      name: 'KCDashboardFleet',
      desc: '',
      args: [],
    );
  }

  /// `The circular indicator on the right side of list items represents the status. The outer circle indicates fatigue, and when it is light yellow, it indicates a fatigue of 49. The center represents the fuel and ammunition status, which is green when both are full. When either is not full, it is orange. Click on an item to view detailed values.`
  String get KCDashboardFleetDescription {
    return Intl.message(
      'The circular indicator on the right side of list items represents the status. The outer circle indicates fatigue, and when it is light yellow, it indicates a fatigue of 49. The center represents the fuel and ammunition status, which is green when both are full. When either is not full, it is orange. Click on an item to view detailed values.',
      name: 'KCDashboardFleetDescription',
      desc: '',
      args: [],
    );
  }

  /// `Operation`
  String get KCDashboardOperation {
    return Intl.message(
      'Operation',
      name: 'KCDashboardOperation',
      desc: '',
      args: [],
    );
  }

  /// `Quest`
  String get KCDashboardQuest {
    return Intl.message(
      'Quest',
      name: 'KCDashboardQuest',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get KCDashboardQuestCompleted {
    return Intl.message(
      'Completed',
      name: 'KCDashboardQuestCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get KCDashboardQuestDone {
    return Intl.message(
      'Done',
      name: 'KCDashboardQuestDone',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get KCDashboardQuestInProgress {
    return Intl.message(
      'In Progress',
      name: 'KCDashboardQuestInProgress',
      desc: '',
      args: [],
    );
  }

  /// `To Do`
  String get KCDashboardQuestToDo {
    return Intl.message(
      'To Do',
      name: 'KCDashboardQuestToDo',
      desc: '',
      args: [],
    );
  }

  /// `Anti-Air`
  String get KCDashboardShipAA {
    return Intl.message(
      'Anti-Air',
      name: 'KCDashboardShipAA',
      desc: '',
      args: [],
    );
  }

  /// `Anti-Sub Warfare`
  String get KCDashboardShipASW {
    return Intl.message(
      'Anti-Sub Warfare',
      name: 'KCDashboardShipASW',
      desc: '',
      args: [],
    );
  }

  /// `Aircraft　Power`
  String get KCDashboardShipAircraftPower {
    return Intl.message(
      'Aircraft　Power',
      name: 'KCDashboardShipAircraftPower',
      desc: '',
      args: [],
    );
  }

  /// `Ammo`
  String get KCDashboardShipAmmo {
    return Intl.message(
      'Ammo',
      name: 'KCDashboardShipAmmo',
      desc: '',
      args: [],
    );
  }

  /// `Armor`
  String get KCDashboardShipArmor {
    return Intl.message(
      'Armor',
      name: 'KCDashboardShipArmor',
      desc: '',
      args: [],
    );
  }

  /// `Condition`
  String get KCDashboardShipCondition {
    return Intl.message(
      'Condition',
      name: 'KCDashboardShipCondition',
      desc: '',
      args: [],
    );
  }

  /// `Evasion`
  String get KCDashboardShipEvasion {
    return Intl.message(
      'Evasion',
      name: 'KCDashboardShipEvasion',
      desc: '',
      args: [],
    );
  }

  /// `Firepower`
  String get KCDashboardShipFirepower {
    return Intl.message(
      'Firepower',
      name: 'KCDashboardShipFirepower',
      desc: '',
      args: [],
    );
  }

  /// `Fuel`
  String get KCDashboardShipFuel {
    return Intl.message(
      'Fuel',
      name: 'KCDashboardShipFuel',
      desc: '',
      args: [],
    );
  }

  /// `HP`
  String get KCDashboardShipHP {
    return Intl.message(
      'HP',
      name: 'KCDashboardShipHP',
      desc: '',
      args: [],
    );
  }

  /// `Luck`
  String get KCDashboardShipLuck {
    return Intl.message(
      'Luck',
      name: 'KCDashboardShipLuck',
      desc: '',
      args: [],
    );
  }

  /// `Plane Capacity`
  String get KCDashboardShipPlaneCapacity {
    return Intl.message(
      'Plane Capacity',
      name: 'KCDashboardShipPlaneCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Range`
  String get KCDashboardShipRange {
    return Intl.message(
      'Range',
      name: 'KCDashboardShipRange',
      desc: '',
      args: [],
    );
  }

  /// `LoS`
  String get KCDashboardShipScout {
    return Intl.message(
      'LoS',
      name: 'KCDashboardShipScout',
      desc: '',
      args: [],
    );
  }

  /// `LoS Score`
  String get KCDashboardShipScoutScore {
    return Intl.message(
      'LoS Score',
      name: 'KCDashboardShipScoutScore',
      desc: '',
      args: [],
    );
  }

  /// `Cn`
  String get KCDashboardShipScoutScoreCoefficient {
    return Intl.message(
      'Cn',
      name: 'KCDashboardShipScoutScoreCoefficient',
      desc: '',
      args: [],
    );
  }

  /// `Formula 33`
  String get KCDashboardShipScoutScoreFormula33 {
    return Intl.message(
      'Formula 33',
      name: 'KCDashboardShipScoutScoreFormula33',
      desc: '',
      args: [],
    );
  }

  /// `Speed`
  String get KCDashboardShipSpeed {
    return Intl.message(
      'Speed',
      name: 'KCDashboardShipSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Torpedo`
  String get KCDashboardShipTorpedo {
    return Intl.message(
      'Torpedo',
      name: 'KCDashboardShipTorpedo',
      desc: '',
      args: [],
    );
  }

  /// `Firepower and Torpedo`
  String get KCDashboardShipTotalAttack {
    return Intl.message(
      'Firepower and Torpedo',
      name: 'KCDashboardShipTotalAttack',
      desc: '',
      args: [],
    );
  }

  /// `Remodel Level`
  String get KCDashboardShipUpgradeLevel {
    return Intl.message(
      'Remodel Level',
      name: 'KCDashboardShipUpgradeLevel',
      desc: '',
      args: [],
    );
  }

  /// `Fleet Girls: {count}`
  String KCDashboardShipViewerCount(Object count) {
    return Intl.message(
      'Fleet Girls: $count',
      name: 'KCDashboardShipViewerCount',
      desc: '',
      args: [count],
    );
  }

  /// `Ship Class`
  String get KCDashboardShipViewerFilterShipClass {
    return Intl.message(
      'Ship Class',
      name: 'KCDashboardShipViewerFilterShipClass',
      desc: '',
      args: [],
    );
  }

  /// `Ship Slot`
  String get KCDashboardShipViewerFilterShipSlot {
    return Intl.message(
      'Ship Slot',
      name: 'KCDashboardShipViewerFilterShipSlot',
      desc: '',
      args: [],
    );
  }

  /// `Ex Slot`
  String get KCDashboardShipViewerFilterShipSlotHaveExSlot {
    return Intl.message(
      'Ex Slot',
      name: 'KCDashboardShipViewerFilterShipSlotHaveExSlot',
      desc: '',
      args: [],
    );
  }

  /// `No Ex Slot`
  String get KCDashboardShipViewerFilterShipSlotNoExSlot {
    return Intl.message(
      'No Ex Slot',
      name: 'KCDashboardShipViewerFilterShipSlotNoExSlot',
      desc: '',
      args: [],
    );
  }

  /// `Ship Status`
  String get KCDashboardShipViewerFilterShipStatus {
    return Intl.message(
      'Ship Status',
      name: 'KCDashboardShipViewerFilterShipStatus',
      desc: '',
      args: [],
    );
  }

  /// `Not Ready to Remodel`
  String get KCDashboardShipViewerFilterShipStatusCanUpgrade {
    return Intl.message(
      'Not Ready to Remodel',
      name: 'KCDashboardShipViewerFilterShipStatusCanUpgrade',
      desc: '',
      args: [],
    );
  }

  /// `Remodeled`
  String get KCDashboardShipViewerFilterShipStatusUpgraded {
    return Intl.message(
      'Remodeled',
      name: 'KCDashboardShipViewerFilterShipStatusUpgraded',
      desc: '',
      args: [],
    );
  }

  /// `Ready to Remodel`
  String get KCDashboardShipViewerFilterShipStatusWaitUpgrade {
    return Intl.message(
      'Ready to Remodel',
      name: 'KCDashboardShipViewerFilterShipStatusWaitUpgrade',
      desc: '',
      args: [],
    );
  }

  /// `Ship Type`
  String get KCDashboardShipViewerFilterShipType {
    return Intl.message(
      'Ship Type',
      name: 'KCDashboardShipViewerFilterShipType',
      desc: '',
      args: [],
    );
  }

  /// `Speed`
  String get KCDashboardShipViewerFilterSpeed {
    return Intl.message(
      'Speed',
      name: 'KCDashboardShipViewerFilterSpeed',
      desc: '',
      args: [],
    );
  }

  /// `AA Ascending`
  String get KCDashboardShipViewerSortAAAsc {
    return Intl.message(
      'AA Ascending',
      name: 'KCDashboardShipViewerSortAAAsc',
      desc: '',
      args: [],
    );
  }

  /// `AA Descending`
  String get KCDashboardShipViewerSortAADesc {
    return Intl.message(
      'AA Descending',
      name: 'KCDashboardShipViewerSortAADesc',
      desc: '',
      args: [],
    );
  }

  /// `ASW Ascending`
  String get KCDashboardShipViewerSortASWAsc {
    return Intl.message(
      'ASW Ascending',
      name: 'KCDashboardShipViewerSortASWAsc',
      desc: '',
      args: [],
    );
  }

  /// `ASW Descending`
  String get KCDashboardShipViewerSortASWDesc {
    return Intl.message(
      'ASW Descending',
      name: 'KCDashboardShipViewerSortASWDesc',
      desc: '',
      args: [],
    );
  }

  /// `Armor Ascending`
  String get KCDashboardShipViewerSortArmorAsc {
    return Intl.message(
      'Armor Ascending',
      name: 'KCDashboardShipViewerSortArmorAsc',
      desc: '',
      args: [],
    );
  }

  /// `Armor Descending`
  String get KCDashboardShipViewerSortArmorDesc {
    return Intl.message(
      'Armor Descending',
      name: 'KCDashboardShipViewerSortArmorDesc',
      desc: '',
      args: [],
    );
  }

  /// `Total Attack Ascending`
  String get KCDashboardShipViewerSortAttackAsc {
    return Intl.message(
      'Total Attack Ascending',
      name: 'KCDashboardShipViewerSortAttackAsc',
      desc: '',
      args: [],
    );
  }

  /// `Total Attack Descending`
  String get KCDashboardShipViewerSortAttackDesc {
    return Intl.message(
      'Total Attack Descending',
      name: 'KCDashboardShipViewerSortAttackDesc',
      desc: '',
      args: [],
    );
  }

  /// `Condition Ascending`
  String get KCDashboardShipViewerSortConditionAsc {
    return Intl.message(
      'Condition Ascending',
      name: 'KCDashboardShipViewerSortConditionAsc',
      desc: '',
      args: [],
    );
  }

  /// `Condition Descending`
  String get KCDashboardShipViewerSortConditionDesc {
    return Intl.message(
      'Condition Descending',
      name: 'KCDashboardShipViewerSortConditionDesc',
      desc: '',
      args: [],
    );
  }

  /// `Level Ascending`
  String get KCDashboardShipViewerSortLevelAsc {
    return Intl.message(
      'Level Ascending',
      name: 'KCDashboardShipViewerSortLevelAsc',
      desc: '',
      args: [],
    );
  }

  /// `Level Descending`
  String get KCDashboardShipViewerSortLevelDesc {
    return Intl.message(
      'Level Descending',
      name: 'KCDashboardShipViewerSortLevelDesc',
      desc: '',
      args: [],
    );
  }

  /// `Luck Ascending`
  String get KCDashboardShipViewerSortLuckAsc {
    return Intl.message(
      'Luck Ascending',
      name: 'KCDashboardShipViewerSortLuckAsc',
      desc: '',
      args: [],
    );
  }

  /// `Luck Descending`
  String get KCDashboardShipViewerSortLuckDesc {
    return Intl.message(
      'Luck Descending',
      name: 'KCDashboardShipViewerSortLuckDesc',
      desc: '',
      args: [],
    );
  }

  /// `Oldest First`
  String get KCDashboardShipViewerSortUIDAsc {
    return Intl.message(
      'Oldest First',
      name: 'KCDashboardShipViewerSortUIDAsc',
      desc: '',
      args: [],
    );
  }

  /// `Newest First`
  String get KCDashboardShipViewerSortUIDDesc {
    return Intl.message(
      'Newest First',
      name: 'KCDashboardShipViewerSortUIDDesc',
      desc: '',
      args: [],
    );
  }

  /// `Fleet Girls`
  String get KCDashboardShipViewerTitle {
    return Intl.message(
      'Fleet Girls',
      name: 'KCDashboardShipViewerTitle',
      desc: '',
      args: [],
    );
  }

  /// `{name} arrived!`
  String KCGetNewShipNotify(Object name) {
    return Intl.message(
      '$name arrived!',
      name: 'KCGetNewShipNotify',
      desc: '',
      args: [name],
    );
  }

  /// `New fleet girl`
  String get KCGetNewShipNotifyTitle {
    return Intl.message(
      'New fleet girl',
      name: 'KCGetNewShipNotifyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lowest Morale`
  String get KCLowestCond {
    return Intl.message(
      'Lowest Morale',
      name: 'KCLowestCond',
      desc: '',
      args: [],
    );
  }

  /// `You need to log in to the game before using this feature.`
  String get KCNeedLoginNoticeDesc {
    return Intl.message(
      'You need to log in to the game before using this feature.',
      name: 'KCNeedLoginNoticeDesc',
      desc: '',
      args: [],
    );
  }

  /// `Ammo`
  String get KCResourceAmmo {
    return Intl.message(
      'Ammo',
      name: 'KCResourceAmmo',
      desc: '',
      args: [],
    );
  }

  /// `Bauxite`
  String get KCResourceBauxite {
    return Intl.message(
      'Bauxite',
      name: 'KCResourceBauxite',
      desc: '',
      args: [],
    );
  }

  /// `Development Material`
  String get KCResourceDevelopmentMaterial {
    return Intl.message(
      'Development Material',
      name: 'KCResourceDevelopmentMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Fuel`
  String get KCResourceFuel {
    return Intl.message(
      'Fuel',
      name: 'KCResourceFuel',
      desc: '',
      args: [],
    );
  }

  /// `Screw`
  String get KCResourceImprovementMaterial {
    return Intl.message(
      'Screw',
      name: 'KCResourceImprovementMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Flamethrower`
  String get KCResourceInstantCreateShip {
    return Intl.message(
      'Flamethrower',
      name: 'KCResourceInstantCreateShip',
      desc: '',
      args: [],
    );
  }

  /// `Bucket`
  String get KCResourceInstantRepair {
    return Intl.message(
      'Bucket',
      name: 'KCResourceInstantRepair',
      desc: '',
      args: [],
    );
  }

  /// `Steel`
  String get KCResourceSteel {
    return Intl.message(
      'Steel',
      name: 'KCResourceSteel',
      desc: '',
      args: [],
    );
  }

  /// `Resources`
  String get KCResources {
    return Intl.message(
      'Resources',
      name: 'KCResources',
      desc: '',
      args: [],
    );
  }

  /// `Deregister`
  String get KCShipDeregisterLabel {
    return Intl.message(
      'Deregister',
      name: 'KCShipDeregisterLabel',
      desc: '',
      args: [],
    );
  }

  /// `Get`
  String get KCShipGetLabel {
    return Intl.message(
      'Get',
      name: 'KCShipGetLabel',
      desc: '',
      args: [],
    );
  }

  /// `Not Registered`
  String get KCShipNotRegisteredLabel {
    return Intl.message(
      'Not Registered',
      name: 'KCShipNotRegisteredLabel',
      desc: '',
      args: [],
    );
  }

  /// `Register List`
  String get KCShipRegisterList {
    return Intl.message(
      'Register List',
      name: 'KCShipRegisterList',
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

  /// `Logbook`
  String get KanColleLogbook {
    return Intl.message(
      'Logbook',
      name: 'KanColleLogbook',
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

  /// `Open Dashboard`
  String get OpenDashboard {
    return Intl.message(
      'Open Dashboard',
      name: 'OpenDashboard',
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

  /// `Please allow app to access Photos in the System Settings.`
  String get ScreenshotFailDialogDesc {
    return Intl.message(
      'Please allow app to access Photos in the System Settings.',
      name: 'ScreenshotFailDialogDesc',
      desc: '',
      args: [],
    );
  }

  /// `Screenshot save failed.`
  String get ScreenshotFailDialogTitle {
    return Intl.message(
      'Screenshot save failed.',
      name: 'ScreenshotFailDialogTitle',
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

  /// `All`
  String get ShortTextAll {
    return Intl.message(
      'All',
      name: 'ShortTextAll',
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

  /// `Airbase`
  String get TextAirbase {
    return Intl.message(
      'Airbase',
      name: 'TextAirbase',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get TextAll {
    return Intl.message(
      'All',
      name: 'TextAll',
      desc: '',
      args: [],
    );
  }

  /// `Back to Top`
  String get TextBackToTop {
    return Intl.message(
      'Back to Top',
      name: 'TextBackToTop',
      desc: '',
      args: [],
    );
  }

  /// `Battle`
  String get TextBattle {
    return Intl.message(
      'Battle',
      name: 'TextBattle',
      desc: '',
      args: [],
    );
  }

  /// `Bonus`
  String get TextBonus {
    return Intl.message(
      'Bonus',
      name: 'TextBonus',
      desc: '',
      args: [],
    );
  }

  /// `Build`
  String get TextBuild {
    return Intl.message(
      'Build',
      name: 'TextBuild',
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

  /// `Compact`
  String get TextCompact {
    return Intl.message(
      'Compact',
      name: 'TextCompact',
      desc: '',
      args: [],
    );
  }

  /// `ConningTower Format`
  String get TextConningTowerFormat {
    return Intl.message(
      'ConningTower Format',
      name: 'TextConningTowerFormat',
      desc: '',
      args: [],
    );
  }

  /// `Copy to Clipboard`
  String get TextCopyToClipboard {
    return Intl.message(
      'Copy to Clipboard',
      name: 'TextCopyToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Copy to Clipboard Failed`
  String get TextCopyToClipboardFailed {
    return Intl.message(
      'Copy to Clipboard Failed',
      name: 'TextCopyToClipboardFailed',
      desc: '',
      args: [],
    );
  }

  /// `Copied to Clipboard`
  String get TextCopyToClipboardSuccess {
    return Intl.message(
      'Copied to Clipboard',
      name: 'TextCopyToClipboardSuccess',
      desc: '',
      args: [],
    );
  }

  /// `DeckBuilder Format`
  String get TextDeckBuilderFormat {
    return Intl.message(
      'DeckBuilder Format',
      name: 'TextDeckBuilderFormat',
      desc: '',
      args: [],
    );
  }

  /// `Destroy`
  String get TextDestroy {
    return Intl.message(
      'Destroy',
      name: 'TextDestroy',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get TextDone {
    return Intl.message(
      'Done',
      name: 'TextDone',
      desc: '',
      args: [],
    );
  }

  /// `Drop`
  String get TextDrop {
    return Intl.message(
      'Drop',
      name: 'TextDrop',
      desc: '',
      args: [],
    );
  }

  /// `Equipment`
  String get TextEquipment {
    return Intl.message(
      'Equipment',
      name: 'TextEquipment',
      desc: '',
      args: [],
    );
  }

  /// `Fast+`
  String get TextFastPlusSpeed {
    return Intl.message(
      'Fast+',
      name: 'TextFastPlusSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Fast`
  String get TextFastSpeed {
    return Intl.message(
      'Fast',
      name: 'TextFastSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Fastest`
  String get TextFastestSpeed {
    return Intl.message(
      'Fastest',
      name: 'TextFastestSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Fleet Girl`
  String get TextFleetGirl {
    return Intl.message(
      'Fleet Girl',
      name: 'TextFleetGirl',
      desc: '',
      args: [],
    );
  }

  /// `Fleet Members`
  String get TextFleetMembers {
    return Intl.message(
      'Fleet Members',
      name: 'TextFleetMembers',
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

  /// `Import`
  String get TextImport {
    return Intl.message(
      'Import',
      name: 'TextImport',
      desc: '',
      args: [],
    );
  }

  /// `Import csv file from poi logbook`
  String get TextImportResourceFromPoi {
    return Intl.message(
      'Import csv file from poi logbook',
      name: 'TextImportResourceFromPoi',
      desc: '',
      args: [],
    );
  }

  /// `{length} items will be imported.`
  String TextImportResourceNumberCheck(Object length) {
    return Intl.message(
      '$length items will be imported.',
      name: 'TextImportResourceNumberCheck',
      desc: '',
      args: [length],
    );
  }

  /// `Are you sure to import these data?`
  String get TextImportResourceWarning {
    return Intl.message(
      'Are you sure to import these data?',
      name: 'TextImportResourceWarning',
      desc: '',
      args: [],
    );
  }

  /// `Importing`
  String get TextImporting {
    return Intl.message(
      'Importing',
      name: 'TextImporting',
      desc: '',
      args: [],
    );
  }

  /// `Import complete`
  String get TextImportingComplete {
    return Intl.message(
      'Import complete',
      name: 'TextImportingComplete',
      desc: '',
      args: [],
    );
  }

  /// `Import failed`
  String get TextImportingFailed {
    return Intl.message(
      'Import failed',
      name: 'TextImportingFailed',
      desc: '',
      args: [],
    );
  }

  /// `Item`
  String get TextItem {
    return Intl.message(
      'Item',
      name: 'TextItem',
      desc: '',
      args: [],
    );
  }

  /// `Heavily damaged`
  String get TextLDamage {
    return Intl.message(
      'Heavily damaged',
      name: 'TextLDamage',
      desc: '',
      args: [],
    );
  }

  /// `Layout`
  String get TextLayout {
    return Intl.message(
      'Layout',
      name: 'TextLayout',
      desc: '',
      args: [],
    );
  }

  /// `Login Required`
  String get TextLoginRequired {
    return Intl.message(
      'Login Required',
      name: 'TextLoginRequired',
      desc: '',
      args: [],
    );
  }

  /// `Long`
  String get TextLongRange {
    return Intl.message(
      'Long',
      name: 'TextLongRange',
      desc: '',
      args: [],
    );
  }

  /// `Moderately damaged`
  String get TextMDamage {
    return Intl.message(
      'Moderately damaged',
      name: 'TextMDamage',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get TextMediumRange {
    return Intl.message(
      'Medium',
      name: 'TextMediumRange',
      desc: '',
      args: [],
    );
  }

  /// `MA Period`
  String get TextMovingAveragePeriod {
    return Intl.message(
      'MA Period',
      name: 'TextMovingAveragePeriod',
      desc: '',
      args: [],
    );
  }

  /// `Network Error: {statusCode}`
  String TextNetworkError(Object statusCode) {
    return Intl.message(
      'Network Error: $statusCode',
      name: 'TextNetworkError',
      desc: '',
      args: [statusCode],
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

  /// `None`
  String get TextNone {
    return Intl.message(
      'None',
      name: 'TextNone',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get TextNormal {
    return Intl.message(
      'Normal',
      name: 'TextNormal',
      desc: '',
      args: [],
    );
  }

  /// `Open in Jervis FleetHub`
  String get TextOpenInJervis {
    return Intl.message(
      'Open in Jervis FleetHub',
      name: 'TextOpenInJervis',
      desc: '',
      args: [],
    );
  }

  /// `Open in Aerial Combat Simulator`
  String get TextOpenInNoro6 {
    return Intl.message(
      'Open in Aerial Combat Simulator',
      name: 'TextOpenInNoro6',
      desc: '',
      args: [],
    );
  }

  /// `Refit`
  String get TextRefit {
    return Intl.message(
      'Refit',
      name: 'TextRefit',
      desc: '',
      args: [],
    );
  }

  /// `Reset Zoom`
  String get TextResetZoom {
    return Intl.message(
      'Reset Zoom',
      name: 'TextResetZoom',
      desc: '',
      args: [],
    );
  }

  /// `Return Port`
  String get TextReturnPort {
    return Intl.message(
      'Return Port',
      name: 'TextReturnPort',
      desc: '',
      args: [],
    );
  }

  /// `Slightly damaged`
  String get TextSDamage {
    return Intl.message(
      'Slightly damaged',
      name: 'TextSDamage',
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

  /// `Share`
  String get TextShare {
    return Intl.message(
      'Share',
      name: 'TextShare',
      desc: '',
      args: [],
    );
  }

  /// `Short`
  String get TextShortRange {
    return Intl.message(
      'Short',
      name: 'TextShortRange',
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

  /// `Slow`
  String get TextSlowSpeed {
    return Intl.message(
      'Slow',
      name: 'TextSlowSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get TextStatus {
    return Intl.message(
      'Status',
      name: 'TextStatus',
      desc: '',
      args: [],
    );
  }

  /// `Sunken`
  String get TextSunken {
    return Intl.message(
      'Sunken',
      name: 'TextSunken',
      desc: '',
      args: [],
    );
  }

  /// `Super long`
  String get TextSuperLongRange {
    return Intl.message(
      'Super long',
      name: 'TextSuperLongRange',
      desc: '',
      args: [],
    );
  }

  /// `Super long+`
  String get TextSuperLongRangePlus {
    return Intl.message(
      'Super long+',
      name: 'TextSuperLongRangePlus',
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

  /// `Total`
  String get TextTotal {
    return Intl.message(
      'Total',
      name: 'TextTotal',
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

  /// `Zoom In`
  String get TextZoomIn {
    return Intl.message(
      'Zoom In',
      name: 'TextZoomIn',
      desc: '',
      args: [],
    );
  }

  /// `Zoom Out`
  String get TextZoomOut {
    return Intl.message(
      'Zoom Out',
      name: 'TextZoomOut',
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

  /// `Use Emoji for Fatigue Display`
  String get UseEmojiForFatigue {
    return Intl.message(
      'Use Emoji for Fatigue Display',
      name: 'UseEmojiForFatigue',
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

  /// `Wiki Data`
  String get WikiDataLabel {
    return Intl.message(
      'Wiki Data',
      name: 'WikiDataLabel',
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
      Locale.fromSubtags(languageCode: 'ko'),
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
