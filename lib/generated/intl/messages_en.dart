// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(url) => "Load URL: ${url}";

  static String m1(data) => "Last Chosen: ${data}";

  static String m2(count) => "Fleet Girls: ${count}";

  static String m3(type, count) =>
      "Equipment Types: ${type}. Total in Stock: ${count}.";

  static String m4(name) => "${name} arrived!";

  static String m5(url) => "Now navigation to ${url}";

  static String m6(url) => "Page finished loading: ${url}";

  static String m7(url) => "Page started loading: ${url}";

  static String m8(taskTitle) => "${taskTitle} has been completed.";

  static String m9(length) => "${length} items will be imported.";

  static String m10(statusCode) => "Network Error: ${statusCode}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("About"),
        "AboutContributors":
            MessageLookupByLibrary.simpleMessage("Contributors"),
        "AboutDescriptionOpen": MessageLookupByLibrary.simpleMessage(
            "Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser."),
        "AboutDescriptionStore": MessageLookupByLibrary.simpleMessage(
            "ConningTower for iOS is a browser designed specifically for playing browser games. It lets you customize your screen and stay in landscape mode with desktop view at all times."),
        "AboutVersion": MessageLookupByLibrary.simpleMessage("Version"),
        "ActiveMainWebPage":
            MessageLookupByLibrary.simpleMessage("Active Main Web Page"),
        "AddDataSource":
            MessageLookupByLibrary.simpleMessage("Add Data Source"),
        "AdvancedGameSupport":
            MessageLookupByLibrary.simpleMessage("Advanced Game Support"),
        "AdvancedGameSupportDescription": MessageLookupByLibrary.simpleMessage(
            "Our team does not operate any games. This feature is based on publicly available data, third-party libraries, and web runtime environments, and its accuracy cannot be guaranteed. If you have games or features you would like us to support, please feel free to contact technical support."),
        "AlertNotShowAgain":
            MessageLookupByLibrary.simpleMessage("Don\'t show again"),
        "AppBack": MessageLookupByLibrary.simpleMessage("Back"),
        "AppBottomSafe":
            MessageLookupByLibrary.simpleMessage("Add Bottom Padding"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("Clear Cache"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("Clear Cookie"),
        "AppControlsClearCache":
            MessageLookupByLibrary.simpleMessage("Cache cleared."),
        "AppControlsHide": MessageLookupByLibrary.simpleMessage("Hide Sidebar"),
        "AppControlsLoad": m0,
        "AppControlsLogoutFailed": MessageLookupByLibrary.simpleMessage(
            "There are no cookies. May not need logout."),
        "AppControlsLogoutSuccess": MessageLookupByLibrary.simpleMessage(
            "Cookies are gone, website logout success"),
        "AppControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView not ready"),
        "AppControlsReload": MessageLookupByLibrary.simpleMessage("Reload"),
        "AppControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("Scroll down"),
        "AppControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("Scroll up"),
        "AppControlsShow": MessageLookupByLibrary.simpleMessage("Show Sidebar"),
        "AppForward": MessageLookupByLibrary.simpleMessage("Forward"),
        "AppHome": MessageLookupByLibrary.simpleMessage("Home"),
        "AppLayoutClean": MessageLookupByLibrary.simpleMessage("Clean Layout"),
        "AppLayoutJoystickAndFAB": MessageLookupByLibrary.simpleMessage(
            "Joystick and Floating Action Button"),
        "AppLayoutMultiFunctionAndFAB": MessageLookupByLibrary.simpleMessage(
            "Multi-Function Button and Floating Action Button"),
        "AppLayoutMultiFunctionButton":
            MessageLookupByLibrary.simpleMessage("Multi-Function Button"),
        "AppLayoutOnlyFAB":
            MessageLookupByLibrary.simpleMessage("Only Floating Action Button"),
        "AppLayoutOnlyJoystick":
            MessageLookupByLibrary.simpleMessage("Only Joystick"),
        "AppLayoutSetting":
            MessageLookupByLibrary.simpleMessage("App Layout Setting"),
        "AppName": MessageLookupByLibrary.simpleMessage("Conning Tower"),
        "AppNotificationManagement":
            MessageLookupByLibrary.simpleMessage("Notification Management"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "Admiral, welcome to the bridge, the bridge will make the game interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the \'Tools-Web-HTTP Redirect\' button before you command."),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTP Redirect"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "AppResize":
            MessageLookupByLibrary.simpleMessage("Resize to Fit Screen"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("Scroll Down"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("Scroll Up"),
        "AppStoreRating":
            MessageLookupByLibrary.simpleMessage("Rate on App Store"),
        "AssetsHtmlSearchBarGo": MessageLookupByLibrary.simpleMessage("Go"),
        "AssetsHtmlSearchBarText": MessageLookupByLibrary.simpleMessage(
            "Search or enter website name"),
        "ClearAllPendingNotifications": MessageLookupByLibrary.simpleMessage(
            "Clear All Pending Notifications"),
        "DarkTheme": MessageLookupByLibrary.simpleMessage("Dark Theme"),
        "DashboardSetting":
            MessageLookupByLibrary.simpleMessage("Show Dashboard on Homepage"),
        "DataDownloadGuide": MessageLookupByLibrary.simpleMessage(
            "To use the KanColle Data Listener feature, go to Tools → Advanced Game Support, download the data, and turn on the switch (if not already on). In case of any issues, reset the app data in Settings."),
        "DataErrorNotice": MessageLookupByLibrary.simpleMessage(
            "Error occurred while parsing data.The data features will not work well. Please contact developer. Also, it may be caused by a network error."),
        "DesktopMode": MessageLookupByLibrary.simpleMessage("Desktop Mode"),
        "DocsNewUrl": MessageLookupByLibrary.simpleMessage(
            "https://conntower.github.io/docs/en/new"),
        "DownloadFleetData":
            MessageLookupByLibrary.simpleMessage("Download Fleet Data"),
        "DownloadOperationData":
            MessageLookupByLibrary.simpleMessage("Download Expedition Data"),
        "EmptyFieldError":
            MessageLookupByLibrary.simpleMessage("Field cannot be empty."),
        "Error": MessageLookupByLibrary.simpleMessage("Error"),
        "FleetData": MessageLookupByLibrary.simpleMessage("Fleet Data"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("Fullscreen fail"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("Fullscreen success"),
        "Game": MessageLookupByLibrary.simpleMessage("Game"),
        "GameMute": MessageLookupByLibrary.simpleMessage("Off"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("On"),
        "InvalidJsonError":
            MessageLookupByLibrary.simpleMessage("Invalid JSON format."),
        "InvalidUrlError": MessageLookupByLibrary.simpleMessage("Invalid URL."),
        "InvalidYamlError":
            MessageLookupByLibrary.simpleMessage("Invalid YAML format."),
        "JsonExample": MessageLookupByLibrary.simpleMessage("JSON Example:"),
        "KCAkashiStudio": MessageLookupByLibrary.simpleMessage("Akashi Studio"),
        "KCBattleAirbaseResourceLostLevel1":
            MessageLookupByLibrary.simpleMessage("Resources sustained losses"),
        "KCBattleAirbaseResourceLostLevel2":
            MessageLookupByLibrary.simpleMessage(
                "Resources and land-based air squadrons sustained losses"),
        "KCBattleAirbaseResourceLostLevel3":
            MessageLookupByLibrary.simpleMessage(
                "Land-based air squadrons sustained losses"),
        "KCBattleAirbaseResourceLostLevel4":
            MessageLookupByLibrary.simpleMessage("No damage was inflicted"),
        "KCBattleDebuffUnlock": MessageLookupByLibrary.simpleMessage(
            "Debuff mechanism has taken effect!"),
        "KCBattleFinish": MessageLookupByLibrary.simpleMessage("Battle Finish"),
        "KCDashboardBattleAllMap": MessageLookupByLibrary.simpleMessage("Maps"),
        "KCDashboardBattleDescription": MessageLookupByLibrary.simpleMessage(
            "Currently, only the battle data of air combat, anti-submarine warfare, artillery battle, and torpedo battle in regular fleet versus regular fleet can be analyzed."),
        "KCDashboardBattleEnemy":
            MessageLookupByLibrary.simpleMessage("Enemy Fleet"),
        "KCDashboardBattleLastChosen": m1,
        "KCDashboardBattleMapStateCleared":
            MessageLookupByLibrary.simpleMessage("Cleared"),
        "KCDashboardBattleMoreInfo":
            MessageLookupByLibrary.simpleMessage("More"),
        "KCDashboardBattleOur":
            MessageLookupByLibrary.simpleMessage("Our Fleet"),
        "KCDashboardBattleRecord": MessageLookupByLibrary.simpleMessage("Rank"),
        "KCDashboardBattleReport":
            MessageLookupByLibrary.simpleMessage("Report"),
        "KCDashboardCommand": MessageLookupByLibrary.simpleMessage("Command"),
        "KCDashboardFleet": MessageLookupByLibrary.simpleMessage("Fleet"),
        "KCDashboardFleetDescription": MessageLookupByLibrary.simpleMessage(
            "The circular indicator on the right side of list items represents the status. The outer circle indicates fatigue, and when it is light yellow, it indicates a fatigue of 49. The center represents the fuel and ammunition status, which is green when both are full. When either is not full, it is orange. Click on an item to view detailed values."),
        "KCDashboardOperation":
            MessageLookupByLibrary.simpleMessage("Operation"),
        "KCDashboardQuest": MessageLookupByLibrary.simpleMessage("Quest"),
        "KCDashboardQuestCompleted":
            MessageLookupByLibrary.simpleMessage("Completed"),
        "KCDashboardQuestDone": MessageLookupByLibrary.simpleMessage("Done"),
        "KCDashboardQuestInProgress":
            MessageLookupByLibrary.simpleMessage("In Progress"),
        "KCDashboardQuestToDo": MessageLookupByLibrary.simpleMessage("To Do"),
        "KCDashboardShipAA": MessageLookupByLibrary.simpleMessage("Anti-Air"),
        "KCDashboardShipASW":
            MessageLookupByLibrary.simpleMessage("Anti-Sub Warfare"),
        "KCDashboardShipAircraftPower":
            MessageLookupByLibrary.simpleMessage("Aircraft　Power"),
        "KCDashboardShipAmmo": MessageLookupByLibrary.simpleMessage("Ammo"),
        "KCDashboardShipArmor": MessageLookupByLibrary.simpleMessage("Armor"),
        "KCDashboardShipCondition":
            MessageLookupByLibrary.simpleMessage("Condition"),
        "KCDashboardShipEvasion":
            MessageLookupByLibrary.simpleMessage("Evasion"),
        "KCDashboardShipFirepower":
            MessageLookupByLibrary.simpleMessage("Firepower"),
        "KCDashboardShipFuel": MessageLookupByLibrary.simpleMessage("Fuel"),
        "KCDashboardShipHP": MessageLookupByLibrary.simpleMessage("HP"),
        "KCDashboardShipLuck": MessageLookupByLibrary.simpleMessage("Luck"),
        "KCDashboardShipPlaneCapacity":
            MessageLookupByLibrary.simpleMessage("Plane Capacity"),
        "KCDashboardShipRange": MessageLookupByLibrary.simpleMessage("Range"),
        "KCDashboardShipScout": MessageLookupByLibrary.simpleMessage("LoS"),
        "KCDashboardShipScoutScore":
            MessageLookupByLibrary.simpleMessage("LoS Score"),
        "KCDashboardShipScoutScoreCoefficient":
            MessageLookupByLibrary.simpleMessage("Cn"),
        "KCDashboardShipScoutScoreFormula33":
            MessageLookupByLibrary.simpleMessage("Formula 33"),
        "KCDashboardShipSpeed": MessageLookupByLibrary.simpleMessage("Speed"),
        "KCDashboardShipTorpedo":
            MessageLookupByLibrary.simpleMessage("Torpedo"),
        "KCDashboardShipTotalAttack":
            MessageLookupByLibrary.simpleMessage("Firepower and Torpedo"),
        "KCDashboardShipUpgradeLevel":
            MessageLookupByLibrary.simpleMessage("Remodel Level"),
        "KCDashboardShipViewerCount": m2,
        "KCDashboardShipViewerFilterShipClass":
            MessageLookupByLibrary.simpleMessage("Ship Class"),
        "KCDashboardShipViewerFilterShipSlot":
            MessageLookupByLibrary.simpleMessage("Ship Slot"),
        "KCDashboardShipViewerFilterShipSlotHaveExSlot":
            MessageLookupByLibrary.simpleMessage("Ex Slot"),
        "KCDashboardShipViewerFilterShipSlotNoExSlot":
            MessageLookupByLibrary.simpleMessage("No Ex Slot"),
        "KCDashboardShipViewerFilterShipStatus":
            MessageLookupByLibrary.simpleMessage("Ship Status"),
        "KCDashboardShipViewerFilterShipStatusCanUpgrade":
            MessageLookupByLibrary.simpleMessage("Not Ready to Remodel"),
        "KCDashboardShipViewerFilterShipStatusUpgraded":
            MessageLookupByLibrary.simpleMessage("Remodeled"),
        "KCDashboardShipViewerFilterShipStatusWaitUpgrade":
            MessageLookupByLibrary.simpleMessage("Ready to Remodel"),
        "KCDashboardShipViewerFilterShipType":
            MessageLookupByLibrary.simpleMessage("Ship Type"),
        "KCDashboardShipViewerFilterSpeed":
            MessageLookupByLibrary.simpleMessage("Speed"),
        "KCDashboardShipViewerSortAAAsc":
            MessageLookupByLibrary.simpleMessage("AA Ascending"),
        "KCDashboardShipViewerSortAADesc":
            MessageLookupByLibrary.simpleMessage("AA Descending"),
        "KCDashboardShipViewerSortASWAsc":
            MessageLookupByLibrary.simpleMessage("ASW Ascending"),
        "KCDashboardShipViewerSortASWDesc":
            MessageLookupByLibrary.simpleMessage("ASW Descending"),
        "KCDashboardShipViewerSortArmorAsc":
            MessageLookupByLibrary.simpleMessage("Armor Ascending"),
        "KCDashboardShipViewerSortArmorDesc":
            MessageLookupByLibrary.simpleMessage("Armor Descending"),
        "KCDashboardShipViewerSortAttackAsc":
            MessageLookupByLibrary.simpleMessage("Total Attack Ascending"),
        "KCDashboardShipViewerSortAttackDesc":
            MessageLookupByLibrary.simpleMessage("Total Attack Descending"),
        "KCDashboardShipViewerSortConditionAsc":
            MessageLookupByLibrary.simpleMessage("Condition Ascending"),
        "KCDashboardShipViewerSortConditionDesc":
            MessageLookupByLibrary.simpleMessage("Condition Descending"),
        "KCDashboardShipViewerSortLevelAsc":
            MessageLookupByLibrary.simpleMessage("Level Ascending"),
        "KCDashboardShipViewerSortLevelDesc":
            MessageLookupByLibrary.simpleMessage("Level Descending"),
        "KCDashboardShipViewerSortLuckAsc":
            MessageLookupByLibrary.simpleMessage("Luck Ascending"),
        "KCDashboardShipViewerSortLuckDesc":
            MessageLookupByLibrary.simpleMessage("Luck Descending"),
        "KCDashboardShipViewerSortUIDAsc":
            MessageLookupByLibrary.simpleMessage("Oldest First"),
        "KCDashboardShipViewerSortUIDDesc":
            MessageLookupByLibrary.simpleMessage("Newest First"),
        "KCDashboardShipViewerTitle":
            MessageLookupByLibrary.simpleMessage("Fleet Girls"),
        "KCEquipmentMainTypeFilterAAGun":
            MessageLookupByLibrary.simpleMessage("Secondary & AA Gun"),
        "KCEquipmentMainTypeFilterAmmo":
            MessageLookupByLibrary.simpleMessage("Ammo"),
        "KCEquipmentMainTypeFilterAntiSub":
            MessageLookupByLibrary.simpleMessage("Anti-Sub"),
        "KCEquipmentMainTypeFilterAttack":
            MessageLookupByLibrary.simpleMessage("Attack Aircraft"),
        "KCEquipmentMainTypeFilterEngineAndArmor":
            MessageLookupByLibrary.simpleMessage("Engine & Armor"),
        "KCEquipmentMainTypeFilterFighter":
            MessageLookupByLibrary.simpleMessage("Fighter"),
        "KCEquipmentMainTypeFilterGun":
            MessageLookupByLibrary.simpleMessage("Main Gun"),
        "KCEquipmentMainTypeFilterImprovementAndResource":
            MessageLookupByLibrary.simpleMessage("Improvement & Resource"),
        "KCEquipmentMainTypeFilterLDAircraft":
            MessageLookupByLibrary.simpleMessage("Land-based Aircraft"),
        "KCEquipmentMainTypeFilterRadar":
            MessageLookupByLibrary.simpleMessage("Radar"),
        "KCEquipmentMainTypeFilterReconAndSeaplane":
            MessageLookupByLibrary.simpleMessage("Recon Aircraft & Seaplane"),
        "KCEquipmentMainTypeFilterSearchlightAndDevice":
            MessageLookupByLibrary.simpleMessage("Searchlight & Device"),
        "KCEquipmentMainTypeFilterTorpedo":
            MessageLookupByLibrary.simpleMessage("Torpedo"),
        "KCEquipmentMainTypeFilterVehicle":
            MessageLookupByLibrary.simpleMessage("Vehicle"),
        "KCEquipmentViewerTotalNote": m3,
        "KCGetNewShipNotify": m4,
        "KCGetNewShipNotifyTitle":
            MessageLookupByLibrary.simpleMessage("New fleet girl"),
        "KCLowestCond": MessageLookupByLibrary.simpleMessage("Lowest Morale"),
        "KCNeedLoginNoticeDesc": MessageLookupByLibrary.simpleMessage(
            "You need to log in to the game before using this feature."),
        "KCResourceAmmo": MessageLookupByLibrary.simpleMessage("Ammo"),
        "KCResourceBauxite": MessageLookupByLibrary.simpleMessage("Bauxite"),
        "KCResourceDevelopmentMaterial":
            MessageLookupByLibrary.simpleMessage("Development Material"),
        "KCResourceFuel": MessageLookupByLibrary.simpleMessage("Fuel"),
        "KCResourceImprovementMaterial":
            MessageLookupByLibrary.simpleMessage("Screw"),
        "KCResourceInstantCreateShip":
            MessageLookupByLibrary.simpleMessage("Flamethrower"),
        "KCResourceInstantRepair":
            MessageLookupByLibrary.simpleMessage("Bucket"),
        "KCResourceSteel": MessageLookupByLibrary.simpleMessage("Steel"),
        "KCResources": MessageLookupByLibrary.simpleMessage("Resources"),
        "KCShipDeregisterLabel":
            MessageLookupByLibrary.simpleMessage("Deregister"),
        "KCShipGetLabel": MessageLookupByLibrary.simpleMessage("Get"),
        "KCShipNotRegisteredLabel":
            MessageLookupByLibrary.simpleMessage("Not Registered"),
        "KCShipRegisterList":
            MessageLookupByLibrary.simpleMessage("Register List"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("Already in game window!"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("Loaded in game window!"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("Game homepage is loading"),
        "KCViewFuncMsgGameNaviBlock": MessageLookupByLibrary.simpleMessage(
            "refresh on game homepage is block"),
        "KCViewFuncMsgNavi": m5,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("Game load completed"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("Game load failed"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("Game not load complete yet"),
        "KCViewFuncMsgPageFinished": m6,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("is game origin url"),
        "KCViewFuncMsgPageStart": m7,
        "KanColleDataListener":
            MessageLookupByLibrary.simpleMessage("Data Listener"),
        "KanColleLogbook": MessageLookupByLibrary.simpleMessage("Logbook"),
        "LightTheme": MessageLookupByLibrary.simpleMessage("Light Theme"),
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click \'Tools-Web-HTTP Redirect\' button."),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage(
            "The game will be muted after refreshing."),
        "MsgUnmuteGame": MessageLookupByLibrary.simpleMessage(
            "The game will be unmuted after refreshing."),
        "OpenDashboard": MessageLookupByLibrary.simpleMessage("Open Dashboard"),
        "OperationData":
            MessageLookupByLibrary.simpleMessage("Expedition Data"),
        "PendingNotificationCount":
            MessageLookupByLibrary.simpleMessage("Pending Notifications Count"),
        "PendingNotifications":
            MessageLookupByLibrary.simpleMessage("Pending Notifications"),
        "PhotoAlbum": MessageLookupByLibrary.simpleMessage("Album"),
        "PhotoAlbumPermissionDescription": MessageLookupByLibrary.simpleMessage(
            "To display photos in the app, please allow access."),
        "PhotoAlbumPermissionReminder": MessageLookupByLibrary.simpleMessage(
            "If photos are not displayed, please open the access permission in system settings."),
        "PhotoAlbumPermissionRequest":
            MessageLookupByLibrary.simpleMessage("Open System Settings"),
        "ScreenshotFailDialogDesc": MessageLookupByLibrary.simpleMessage(
            "Please allow app to access Photos in the System Settings."),
        "ScreenshotFailDialogTitle":
            MessageLookupByLibrary.simpleMessage("Screenshot save failed."),
        "ScreenshotSuccessDialog":
            MessageLookupByLibrary.simpleMessage("Screenshot saved."),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("Settings"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("Enable Auto Fullscreen"),
        "SettingsHideFAB":
            MessageLookupByLibrary.simpleMessage("Hide Floating Action Button"),
        "SettingsHomeLoad": MessageLookupByLibrary.simpleMessage(
            "Auto Open Homepage URL on Launch"),
        "SettingsHomeLoadShort":
            MessageLookupByLibrary.simpleMessage("Auto Load"),
        "SettingsHomeSave": MessageLookupByLibrary.simpleMessage(
            "Make Current Web Page as Homepage URL"),
        "SettingsHomeSaveShort":
            MessageLookupByLibrary.simpleMessage("Homepage"),
        "SettingsLandscape": MessageLookupByLibrary.simpleMessage("Landscape"),
        "SettingsLandscapeLeft":
            MessageLookupByLibrary.simpleMessage("Landscape Left"),
        "SettingsLandscapeRight":
            MessageLookupByLibrary.simpleMessage("Landscape Right"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("Lock Screen Orientation"),
        "SettingsLockDeviceOrientationTip":
            MessageLookupByLibrary.simpleMessage("Not Available for iPad"),
        "SettingsPortrait": MessageLookupByLibrary.simpleMessage("Portrait"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("Reset App"),
        "SettingsScreenOrientation":
            MessageLookupByLibrary.simpleMessage("Change Screen Orientation"),
        "ShipData": MessageLookupByLibrary.simpleMessage("Ship Data"),
        "ShortTextAll": MessageLookupByLibrary.simpleMessage("All"),
        "StatusCode": MessageLookupByLibrary.simpleMessage("Status Code"),
        "SystemTheme": MessageLookupByLibrary.simpleMessage("System Theme"),
        "TakeScreenshot": MessageLookupByLibrary.simpleMessage("Screenshot"),
        "TaskCompleted": m8,
        "TaskDashboardTitle": MessageLookupByLibrary.simpleMessage("Tasks"),
        "TaskNotAdded": MessageLookupByLibrary.simpleMessage("Task Not Added"),
        "TaskNotificationAdded": MessageLookupByLibrary.simpleMessage(
            "Task Notification Added Successfully"),
        "TaskPageOperationTip": MessageLookupByLibrary.simpleMessage(
            "To enable push notifications for the following tasks, please tap this item"),
        "TaskPageTitle": MessageLookupByLibrary.simpleMessage("Tasks Timer"),
        "TaskReminders": MessageLookupByLibrary.simpleMessage("Task Reminders"),
        "TaskRemindersHelpContent": MessageLookupByLibrary.simpleMessage(
            "The Task Reminders feature allows you to add and manage task reminders.\n\n- To add a data source, click the Add data source button in the top right corner and enter a valid URL or YAML/JSON content.\n\n- To save changes, click the Save button.\n\n- Added tasks will be displayed in the list.\n\n- Double clicking on a task will add a reminder notification for that task.\n\n- Clicking on a task to enter the task information page where you can view detailed information.\n\n- In the task information page, click the Up-Arrow button in the top right corner to pin the task at the top of the task list.\n\n- If you encounter any issues, please contact our support team.\n\nEnjoy using it!"),
        "TasksNumOverLimit": MessageLookupByLibrary.simpleMessage(
            "request tasks number over limit."),
        "TextAirbase": MessageLookupByLibrary.simpleMessage("Airbase"),
        "TextAll": MessageLookupByLibrary.simpleMessage("All"),
        "TextBackToTop": MessageLookupByLibrary.simpleMessage("Back to Top"),
        "TextBattle": MessageLookupByLibrary.simpleMessage("Battle"),
        "TextBonus": MessageLookupByLibrary.simpleMessage("Bonus"),
        "TextBuild": MessageLookupByLibrary.simpleMessage("Build"),
        "TextCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "TextCategory": MessageLookupByLibrary.simpleMessage("Category"),
        "TextCompact": MessageLookupByLibrary.simpleMessage("Compact"),
        "TextConningTowerFormat":
            MessageLookupByLibrary.simpleMessage("ConningTower Format"),
        "TextCopyToClipboard":
            MessageLookupByLibrary.simpleMessage("Copy to Clipboard"),
        "TextCopyToClipboardFailed":
            MessageLookupByLibrary.simpleMessage("Copy to Clipboard Failed"),
        "TextCopyToClipboardSuccess":
            MessageLookupByLibrary.simpleMessage("Copied to Clipboard"),
        "TextDeckBuilderFormat":
            MessageLookupByLibrary.simpleMessage("DeckBuilder Format"),
        "TextDestroy": MessageLookupByLibrary.simpleMessage("Destroy"),
        "TextDone": MessageLookupByLibrary.simpleMessage("Done"),
        "TextDrop": MessageLookupByLibrary.simpleMessage("Drop"),
        "TextEquipment": MessageLookupByLibrary.simpleMessage("Equipment"),
        "TextFastPlusSpeed": MessageLookupByLibrary.simpleMessage("Fast+"),
        "TextFastSpeed": MessageLookupByLibrary.simpleMessage("Fast"),
        "TextFastestSpeed": MessageLookupByLibrary.simpleMessage("Fastest"),
        "TextFleetGirl": MessageLookupByLibrary.simpleMessage("Fleet Girl"),
        "TextFleetMembers":
            MessageLookupByLibrary.simpleMessage("Fleet Members"),
        "TextHelp": MessageLookupByLibrary.simpleMessage("Help"),
        "TextId": MessageLookupByLibrary.simpleMessage("ID"),
        "TextImport": MessageLookupByLibrary.simpleMessage("Import"),
        "TextImportResourceFromPoi": MessageLookupByLibrary.simpleMessage(
            "Import csv file from poi logbook"),
        "TextImportResourceNumberCheck": m9,
        "TextImportResourceWarning": MessageLookupByLibrary.simpleMessage(
            "Are you sure to import these data?"),
        "TextImporting": MessageLookupByLibrary.simpleMessage("Importing"),
        "TextImportingComplete":
            MessageLookupByLibrary.simpleMessage("Import complete"),
        "TextImportingFailed":
            MessageLookupByLibrary.simpleMessage("Import failed"),
        "TextItem": MessageLookupByLibrary.simpleMessage("Item"),
        "TextLDamage": MessageLookupByLibrary.simpleMessage("Heavily damaged"),
        "TextLayout": MessageLookupByLibrary.simpleMessage("Layout"),
        "TextLoginRequired":
            MessageLookupByLibrary.simpleMessage("Login Required"),
        "TextLongRange": MessageLookupByLibrary.simpleMessage("Long"),
        "TextMDamage":
            MessageLookupByLibrary.simpleMessage("Moderately damaged"),
        "TextMediumRange": MessageLookupByLibrary.simpleMessage("Medium"),
        "TextMovingAveragePeriod":
            MessageLookupByLibrary.simpleMessage("MA Period"),
        "TextNetworkError": m10,
        "TextNo": MessageLookupByLibrary.simpleMessage("No"),
        "TextNone": MessageLookupByLibrary.simpleMessage("None"),
        "TextNormal": MessageLookupByLibrary.simpleMessage("Normal"),
        "TextOpenInJervis":
            MessageLookupByLibrary.simpleMessage("Open in Jervis FleetHub"),
        "TextOpenInNoro6": MessageLookupByLibrary.simpleMessage(
            "Open in Aerial Combat Simulator"),
        "TextOther": MessageLookupByLibrary.simpleMessage("Other"),
        "TextRefit": MessageLookupByLibrary.simpleMessage("Refit"),
        "TextResetZoom": MessageLookupByLibrary.simpleMessage("Reset Zoom"),
        "TextReturnPort": MessageLookupByLibrary.simpleMessage("Return Port"),
        "TextSDamage": MessageLookupByLibrary.simpleMessage("Slightly damaged"),
        "TextSave": MessageLookupByLibrary.simpleMessage("Save"),
        "TextShare": MessageLookupByLibrary.simpleMessage("Share"),
        "TextShortRange": MessageLookupByLibrary.simpleMessage("Short"),
        "TextShouldClose":
            MessageLookupByLibrary.simpleMessage("Should Close?"),
        "TextSlowSpeed": MessageLookupByLibrary.simpleMessage("Slow"),
        "TextStatus": MessageLookupByLibrary.simpleMessage("Status"),
        "TextSunken": MessageLookupByLibrary.simpleMessage("Sunken"),
        "TextSuperLongRange":
            MessageLookupByLibrary.simpleMessage("Super long"),
        "TextSuperLongRangePlus":
            MessageLookupByLibrary.simpleMessage("Super long+"),
        "TextTag": MessageLookupByLibrary.simpleMessage("Tag"),
        "TextTime": MessageLookupByLibrary.simpleMessage("Time"),
        "TextTitle": MessageLookupByLibrary.simpleMessage("Title"),
        "TextTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "TextYes": MessageLookupByLibrary.simpleMessage("Yes"),
        "TextZoomIn": MessageLookupByLibrary.simpleMessage("Zoom In"),
        "TextZoomOut": MessageLookupByLibrary.simpleMessage("Zoom Out"),
        "Theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "ToolSaveHomeCancel":
            MessageLookupByLibrary.simpleMessage("Homepage URL removed"),
        "ToolSaveHomeFail": MessageLookupByLibrary.simpleMessage("Invalid URL"),
        "ToolSaveHomeSuccess":
            MessageLookupByLibrary.simpleMessage("Homepage URL saved"),
        "ToolSearchBarURLSetting":
            MessageLookupByLibrary.simpleMessage("Edit Homepage URL"),
        "ToolTitleGameScreen":
            MessageLookupByLibrary.simpleMessage("WebView Screen"),
        "ToolTitleGameSound":
            MessageLookupByLibrary.simpleMessage("Game Sound"),
        "ToolTitleUtilities": MessageLookupByLibrary.simpleMessage("Utilities"),
        "ToolTitleWeb": MessageLookupByLibrary.simpleMessage("Web"),
        "ToolUASetting": MessageLookupByLibrary.simpleMessage("Edit UserAgent"),
        "ToolUATip":
            MessageLookupByLibrary.simpleMessage("Need Relaunch App to Active"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("Tools"),
        "UrlExample": MessageLookupByLibrary.simpleMessage("URL Example:"),
        "UrlRequestFormat": MessageLookupByLibrary.simpleMessage(
            "The response from the URL request must be in JSON format and have a structure consistent with the example response above."),
        "UseEmojiForFatigue": MessageLookupByLibrary.simpleMessage(
            "Use Emoji for Fatigue Display"),
        "VersionUpdateContent": MessageLookupByLibrary.simpleMessage(
            "Software version update found, please check the version update document."),
        "VersionUpdateLinkText":
            MessageLookupByLibrary.simpleMessage("Click here to view"),
        "VersionUpdateTitle":
            MessageLookupByLibrary.simpleMessage("Version Update"),
        "WeaponData": MessageLookupByLibrary.simpleMessage("Weapon Data"),
        "WikiDataLabel": MessageLookupByLibrary.simpleMessage("Wiki Data"),
        "YamlExample": MessageLookupByLibrary.simpleMessage("YAML Example:")
      };
}
