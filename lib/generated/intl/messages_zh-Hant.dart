// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hant locale. All the
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
  String get localeName => 'zh_Hant';

  static String m0(url) => "載入網址: ${url}";

  static String m1(count) => "艦娘數: ${count}";

  static String m2(url) => "正在加載 ${url}";

  static String m3(url) => "頁面加載完畢: ${url}";

  static String m4(url) => "頁面開始載入 ${url}";

  static String m5(taskTitle) => "${taskTitle} 已完成。";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("關於"),
        "AboutContributors": MessageLookupByLibrary.simpleMessage("貢獻者"),
        "AboutDescriptionOpen": MessageLookupByLibrary.simpleMessage(
            "艦橋是一款跨平台艦隊Collection「艦隊これくしょん-艦これ-」專用瀏覽器。"),
        "AboutDescriptionStore": MessageLookupByLibrary.simpleMessage(
            "艦橋是一款為瀏覽器遊戲設計的瀏覽器，可以定制您的屏幕並保持橫向桌面視圖。"),
        "AboutVersion": MessageLookupByLibrary.simpleMessage("版本"),
        "ActiveMainWebPage": MessageLookupByLibrary.simpleMessage("目前啟用的主要網頁"),
        "AddDataSource": MessageLookupByLibrary.simpleMessage("添加數據源"),
        "AdvancedGameSupport": MessageLookupByLibrary.simpleMessage("高級遊戲支援"),
        "AdvancedGameSupportDescription": MessageLookupByLibrary.simpleMessage(
            "本團隊未運營任何遊戲，該功能基於公開數據和第三方庫、web運行環境實現，不能保證準確性。如果你有想要我們支援的遊戲及功能，歡迎聯繫技術支援。"),
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("不再顯示"),
        "AppBack": MessageLookupByLibrary.simpleMessage("上一頁"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("底部上移"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("刪除緩存"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("刪除Cookie"),
        "AppControlsClearCache": MessageLookupByLibrary.simpleMessage("已刪除緩存"),
        "AppControlsHide": MessageLookupByLibrary.simpleMessage("隱藏側邊欄"),
        "AppControlsLoad": m0,
        "AppControlsLogoutFailed":
            MessageLookupByLibrary.simpleMessage("未找到Cookie"),
        "AppControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("已成功刪除Cookie"),
        "AppControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView還沒有準備好"),
        "AppControlsReload": MessageLookupByLibrary.simpleMessage("重新整理"),
        "AppControlsScrollDown": MessageLookupByLibrary.simpleMessage("向下捲動"),
        "AppControlsScrollUp": MessageLookupByLibrary.simpleMessage("向上捲動"),
        "AppControlsShow": MessageLookupByLibrary.simpleMessage("顯示側邊欄"),
        "AppForward": MessageLookupByLibrary.simpleMessage("下一頁"),
        "AppHome": MessageLookupByLibrary.simpleMessage("主頁"),
        "AppLayoutClean": MessageLookupByLibrary.simpleMessage("簡潔"),
        "AppLayoutJoystickAndFAB":
            MessageLookupByLibrary.simpleMessage("同時顯示搖桿和浮動按鈕"),
        "AppLayoutMultiFunctionAndFAB":
            MessageLookupByLibrary.simpleMessage("同時顯示多功能按鈕和浮動按鈕"),
        "AppLayoutMultiFunctionButton":
            MessageLookupByLibrary.simpleMessage("多功能按鈕"),
        "AppLayoutOnlyFAB": MessageLookupByLibrary.simpleMessage("只有浮動按鈕"),
        "AppLayoutOnlyJoystick": MessageLookupByLibrary.simpleMessage("只有搖桿"),
        "AppLayoutSetting": MessageLookupByLibrary.simpleMessage("佈局設定"),
        "AppName": MessageLookupByLibrary.simpleMessage("艦橋"),
        "AppNotificationManagement":
            MessageLookupByLibrary.simpleMessage("通知管理"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督，歡迎來到艦橋，艦橋會在遊戲界面加載完成後自動調整屏幕尺寸到合適大小，如果長時間看到DMM GAMES的頂欄存在，請在你指揮艦隊前點擊「工具-Web-重定向」。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("重定向"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("重新整理"),
        "AppResize": MessageLookupByLibrary.simpleMessage("調整大小至適合屏幕"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("向下捲動"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("向上捲動"),
        "AppStoreRating": MessageLookupByLibrary.simpleMessage("在應用商店評分"),
        "AssetsHtmlSearchBarGo": MessageLookupByLibrary.simpleMessage("前往"),
        "AssetsHtmlSearchBarText":
            MessageLookupByLibrary.simpleMessage("搜尋或輸入網站名稱"),
        "ClearAllPendingNotifications":
            MessageLookupByLibrary.simpleMessage("清除所有等待中的通知"),
        "DarkTheme": MessageLookupByLibrary.simpleMessage("深色主題"),
        "DashboardSetting":
            MessageLookupByLibrary.simpleMessage("在主頁顯示 Dashboard"),
        "DataDownloadGuide": MessageLookupByLibrary.simpleMessage(
            "如需使用KanColle數據監聽功能，為保證功能可用務必前往工具-高級遊戲支援中下載數據並打開開關（如果沒有打開），如遇異常請在設定中重置應用數據。"),
        "DataErrorNotice": MessageLookupByLibrary.simpleMessage(
            "解析數據時發生錯誤，數據功能將不可靠。請與開發者聯繫。也可能是由於網絡錯誤引起的，請嘗試重新載入。"),
        "DesktopMode": MessageLookupByLibrary.simpleMessage("桌面模式"),
        "DocsNewUrl": MessageLookupByLibrary.simpleMessage(
            "https://conntower.github.io/docs/zh_Hant/new"),
        "DownloadFleetData": MessageLookupByLibrary.simpleMessage("下載艦隊資料"),
        "DownloadOperationData": MessageLookupByLibrary.simpleMessage("下載遠征資料"),
        "EmptyFieldError": MessageLookupByLibrary.simpleMessage("輸入框不能為空。"),
        "Error": MessageLookupByLibrary.simpleMessage("發生錯誤"),
        "FleetData": MessageLookupByLibrary.simpleMessage("艦隊資料"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全螢幕失敗"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全螢幕成功"),
        "Game": MessageLookupByLibrary.simpleMessage("遊戲"),
        "GameMute": MessageLookupByLibrary.simpleMessage("遊戲靜音"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("遊戲解除靜音"),
        "InvalidJsonError": MessageLookupByLibrary.simpleMessage("無效的JSON格式。"),
        "InvalidUrlError": MessageLookupByLibrary.simpleMessage("無效的URL。"),
        "InvalidYamlError": MessageLookupByLibrary.simpleMessage("無效的YAML格式。"),
        "JsonExample": MessageLookupByLibrary.simpleMessage("JSON範例："),
        "KCDashboardBattleDescription": MessageLookupByLibrary.simpleMessage(
            "目前只有通常艦隊對通常艦隊的一般戰鬥數據中的航空戰、反潛戰、砲擊戰、雷擊戰可以解析。"),
        "KCDashboardBattleReport": MessageLookupByLibrary.simpleMessage("戰鬥報告"),
        "KCDashboardCommand": MessageLookupByLibrary.simpleMessage("司令部"),
        "KCDashboardFleet": MessageLookupByLibrary.simpleMessage("艦隊"),
        "KCDashboardFleetDescription": MessageLookupByLibrary.simpleMessage(
            "列表項目右側圓環為狀態指示，外環表示疲勞度，為淺黃色時表示疲勞度為49，圓心表示燃料和彈藥狀態，燃料和彈藥全滿時為綠色，任意一項不滿時為橙色。項目可以點擊查看詳細數值。"),
        "KCDashboardOperation": MessageLookupByLibrary.simpleMessage("遠征"),
        "KCDashboardQuest": MessageLookupByLibrary.simpleMessage("任務"),
        "KCDashboardQuestCompleted": MessageLookupByLibrary.simpleMessage("完成"),
        "KCDashboardQuestDone": MessageLookupByLibrary.simpleMessage("已完結"),
        "KCDashboardQuestInProgress":
            MessageLookupByLibrary.simpleMessage("進行中"),
        "KCDashboardQuestToDo": MessageLookupByLibrary.simpleMessage("待進行"),
        "KCDashboardShipAA": MessageLookupByLibrary.simpleMessage("對空"),
        "KCDashboardShipASW": MessageLookupByLibrary.simpleMessage("對潜"),
        "KCDashboardShipAircraftPower":
            MessageLookupByLibrary.simpleMessage("制空"),
        "KCDashboardShipAmmo": MessageLookupByLibrary.simpleMessage("彈藥"),
        "KCDashboardShipArmor": MessageLookupByLibrary.simpleMessage("护甲"),
        "KCDashboardShipCondition": MessageLookupByLibrary.simpleMessage("疲劳度"),
        "KCDashboardShipEvasion": MessageLookupByLibrary.simpleMessage("回避"),
        "KCDashboardShipFirepower": MessageLookupByLibrary.simpleMessage("火力"),
        "KCDashboardShipFuel": MessageLookupByLibrary.simpleMessage("燃料"),
        "KCDashboardShipHP": MessageLookupByLibrary.simpleMessage("耐久"),
        "KCDashboardShipLuck": MessageLookupByLibrary.simpleMessage("運"),
        "KCDashboardShipPlaneCapacity":
            MessageLookupByLibrary.simpleMessage("搭載"),
        "KCDashboardShipRange": MessageLookupByLibrary.simpleMessage("射程"),
        "KCDashboardShipScout": MessageLookupByLibrary.simpleMessage("索敵"),
        "KCDashboardShipScoutScore":
            MessageLookupByLibrary.simpleMessage("索敵值"),
        "KCDashboardShipScoutScoreCoefficient":
            MessageLookupByLibrary.simpleMessage("分歧點係數"),
        "KCDashboardShipScoutScoreFormula33":
            MessageLookupByLibrary.simpleMessage("33式"),
        "KCDashboardShipSpeed": MessageLookupByLibrary.simpleMessage("速度"),
        "KCDashboardShipTorpedo": MessageLookupByLibrary.simpleMessage("雷裝"),
        "KCDashboardShipTotalAttack":
            MessageLookupByLibrary.simpleMessage("火雷值"),
        "KCDashboardShipUpgradeLevel":
            MessageLookupByLibrary.simpleMessage("改造等級"),
        "KCDashboardShipViewerCount": m1,
        "KCDashboardShipViewerFilterShipClass":
            MessageLookupByLibrary.simpleMessage("艦級"),
        "KCDashboardShipViewerFilterShipSlot":
            MessageLookupByLibrary.simpleMessage("裝備"),
        "KCDashboardShipViewerFilterShipSlotHaveExSlot":
            MessageLookupByLibrary.simpleMessage("补强增设已使用"),
        "KCDashboardShipViewerFilterShipSlotNoExSlot":
            MessageLookupByLibrary.simpleMessage("补强增设未使用"),
        "KCDashboardShipViewerFilterShipStatus":
            MessageLookupByLibrary.simpleMessage("狀態"),
        "KCDashboardShipViewerFilterShipStatusCanUpgrade":
            MessageLookupByLibrary.simpleMessage("尚不可改造"),
        "KCDashboardShipViewerFilterShipStatusUpgraded":
            MessageLookupByLibrary.simpleMessage("已改造"),
        "KCDashboardShipViewerFilterShipStatusWaitUpgrade":
            MessageLookupByLibrary.simpleMessage("等待改造"),
        "KCDashboardShipViewerFilterShipType":
            MessageLookupByLibrary.simpleMessage("艦種"),
        "KCDashboardShipViewerFilterSpeed":
            MessageLookupByLibrary.simpleMessage("速度"),
        "KCDashboardShipViewerSortAAAsc":
            MessageLookupByLibrary.simpleMessage("對空升序"),
        "KCDashboardShipViewerSortAADesc":
            MessageLookupByLibrary.simpleMessage("對空降序"),
        "KCDashboardShipViewerSortASWAsc":
            MessageLookupByLibrary.simpleMessage("對潜升序"),
        "KCDashboardShipViewerSortASWDesc":
            MessageLookupByLibrary.simpleMessage("對潜降序"),
        "KCDashboardShipViewerSortArmorAsc":
            MessageLookupByLibrary.simpleMessage("护甲升序"),
        "KCDashboardShipViewerSortArmorDesc":
            MessageLookupByLibrary.simpleMessage("护甲降序"),
        "KCDashboardShipViewerSortAttackAsc":
            MessageLookupByLibrary.simpleMessage("火雷值升序"),
        "KCDashboardShipViewerSortAttackDesc":
            MessageLookupByLibrary.simpleMessage("火雷值降序"),
        "KCDashboardShipViewerSortConditionAsc":
            MessageLookupByLibrary.simpleMessage("疲劳度升序"),
        "KCDashboardShipViewerSortConditionDesc":
            MessageLookupByLibrary.simpleMessage("疲劳度降序"),
        "KCDashboardShipViewerSortLevelAsc":
            MessageLookupByLibrary.simpleMessage("等級升序"),
        "KCDashboardShipViewerSortLevelDesc":
            MessageLookupByLibrary.simpleMessage("等級降序"),
        "KCDashboardShipViewerSortLuckAsc":
            MessageLookupByLibrary.simpleMessage("運值升序"),
        "KCDashboardShipViewerSortLuckDesc":
            MessageLookupByLibrary.simpleMessage("運值降序"),
        "KCDashboardShipViewerSortUIDAsc":
            MessageLookupByLibrary.simpleMessage("從舊到新"),
        "KCDashboardShipViewerSortUIDDesc":
            MessageLookupByLibrary.simpleMessage("從新到舊"),
        "KCDashboardShipViewerTitle":
            MessageLookupByLibrary.simpleMessage("艦娘"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("已載入遊戲視窗，無需執行"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("已載入遊戲視窗！"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("遊戲視窗載入中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("遊戲視窗的重載已被攔截"),
        "KCViewFuncMsgNavi": m2,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("遊戲加載完成"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("遊戲加載失敗"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("遊戲未加載完畢"),
        "KCViewFuncMsgPageFinished": m3,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("當前頁面為遊戲url"),
        "KCViewFuncMsgPageStart": m4,
        "KanColleDataListener": MessageLookupByLibrary.simpleMessage("資料監聽"),
        "KanColleLogbook": MessageLookupByLibrary.simpleMessage("航海日誌"),
        "LightTheme": MessageLookupByLibrary.simpleMessage("淺色主題"),
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "使用iOS 15.0或以上版本系統的提督請注意，當你看到DMM GAMES頂欄有顯示並白屏時，請點擊「工具-Web-重定向」。"),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage("遊戲將會在重新載入後靜音。"),
        "MsgUnmuteGame":
            MessageLookupByLibrary.simpleMessage("遊戲將會在重新載入後解除靜音。"),
        "OpenDashboard": MessageLookupByLibrary.simpleMessage("開啟Dashboard"),
        "OperationData": MessageLookupByLibrary.simpleMessage("遠征資料"),
        "PendingNotificationCount":
            MessageLookupByLibrary.simpleMessage("等待中的通知數量"),
        "PendingNotifications": MessageLookupByLibrary.simpleMessage("等待中的通知"),
        "PhotoAlbum": MessageLookupByLibrary.simpleMessage("相簿"),
        "PhotoAlbumPermissionDescription":
            MessageLookupByLibrary.simpleMessage("如需在應用內顯示照片請允許訪問。"),
        "PhotoAlbumPermissionReminder":
            MessageLookupByLibrary.simpleMessage("如果照片無法顯示，請在系統設定中打開讀取權限。"),
        "PhotoAlbumPermissionRequest":
            MessageLookupByLibrary.simpleMessage("點此打開系統設定"),
        "ScreenshotFailDialog":
            MessageLookupByLibrary.simpleMessage("截圖保存失敗，請在系統設定中允許艦橋取用相片"),
        "ScreenshotSuccessDialog":
            MessageLookupByLibrary.simpleMessage("截圖已保存"),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("設定"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("啟用自動全螢幕"),
        "SettingsHideFAB": MessageLookupByLibrary.simpleMessage("隱藏浮動操作按鈕"),
        "SettingsHomeLoad":
            MessageLookupByLibrary.simpleMessage("啟動時自動打開主頁URL"),
        "SettingsHomeLoadShort": MessageLookupByLibrary.simpleMessage("自動打開"),
        "SettingsHomeSave":
            MessageLookupByLibrary.simpleMessage("將當前網頁設置為主頁URL"),
        "SettingsHomeSaveShort": MessageLookupByLibrary.simpleMessage("收藏"),
        "SettingsLandscape": MessageLookupByLibrary.simpleMessage("横屏"),
        "SettingsLandscapeLeft": MessageLookupByLibrary.simpleMessage("左横屏"),
        "SettingsLandscapeRight": MessageLookupByLibrary.simpleMessage("右横屏"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("鎖定屏幕方向"),
        "SettingsLockDeviceOrientationTip":
            MessageLookupByLibrary.simpleMessage("不適用於iPad"),
        "SettingsPortrait": MessageLookupByLibrary.simpleMessage("竖屏"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("重設"),
        "SettingsScreenOrientation":
            MessageLookupByLibrary.simpleMessage("屏幕方向設置"),
        "ShipData": MessageLookupByLibrary.simpleMessage("艦艇資料"),
        "StatusCode": MessageLookupByLibrary.simpleMessage("狀態碼"),
        "SystemTheme": MessageLookupByLibrary.simpleMessage("跟隨系統"),
        "TakeScreenshot": MessageLookupByLibrary.simpleMessage("截屏"),
        "TaskCompleted": m5,
        "TaskDashboardTitle": MessageLookupByLibrary.simpleMessage("任務提醒"),
        "TaskNotAdded": MessageLookupByLibrary.simpleMessage("未添加任務"),
        "TaskNotificationAdded":
            MessageLookupByLibrary.simpleMessage("任務通知添加成功"),
        "TaskPageOperationTip":
            MessageLookupByLibrary.simpleMessage("如需新增以下任務的推送通知，請點擊該項目"),
        "TaskPageTitle": MessageLookupByLibrary.simpleMessage("任務提醒"),
        "TaskReminders": MessageLookupByLibrary.simpleMessage("任務提醒"),
        "TaskRemindersHelpContent": MessageLookupByLibrary.simpleMessage(
            "任務提醒功能允許您添加和管理任務提醒。\n\n- 要添加數據源，請點擊右上角的“添加數據源”按鈕，並輸入有效的URL或YAML/JSON內容。\n\n- 要保存更改，請點擊“保存”按鈕。\n\n- 已添加的任務將顯示在列表中。\n\n- 雙擊任務即可添加該任務的提醒推送。\n\n- 點擊進入任務信息頁，您可以查看詳細信息。\n\n- 在任務信息頁中，點擊右上角的向上箭頭按鈕可以將該任務在任務列表中置頂。\n\n- 如果您遇到任何問題，請聯繫我們的支援團隊。\n\n祝您使用愉快!"),
        "TasksNumOverLimit": MessageLookupByLibrary.simpleMessage("導入任務數量超出限制"),
        "TextAll": MessageLookupByLibrary.simpleMessage("全部"),
        "TextBattle": MessageLookupByLibrary.simpleMessage("戰鬥"),
        "TextCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "TextConningTowerFormat":
            MessageLookupByLibrary.simpleMessage("ConningTower格式"),
        "TextCopyToClipboard": MessageLookupByLibrary.simpleMessage("複製"),
        "TextCopyToClipboardFailed":
            MessageLookupByLibrary.simpleMessage("複製失敗"),
        "TextCopyToClipboardSuccess":
            MessageLookupByLibrary.simpleMessage("已複製到剪貼簿"),
        "TextDeckBuilderFormat":
            MessageLookupByLibrary.simpleMessage("DeckBuilder格式"),
        "TextEquipment": MessageLookupByLibrary.simpleMessage("裝備"),
        "TextFastPlusSpeed": MessageLookupByLibrary.simpleMessage("高速+"),
        "TextFastSpeed": MessageLookupByLibrary.simpleMessage("高速"),
        "TextFastestSpeed": MessageLookupByLibrary.simpleMessage("最速"),
        "TextFleetGirl": MessageLookupByLibrary.simpleMessage("艦娘"),
        "TextFleetMembers": MessageLookupByLibrary.simpleMessage("艦隊成員"),
        "TextHelp": MessageLookupByLibrary.simpleMessage("幫助"),
        "TextId": MessageLookupByLibrary.simpleMessage("ID"),
        "TextItem": MessageLookupByLibrary.simpleMessage("道具"),
        "TextLDamage": MessageLookupByLibrary.simpleMessage("大破"),
        "TextLongRange": MessageLookupByLibrary.simpleMessage("長"),
        "TextMDamage": MessageLookupByLibrary.simpleMessage("中破"),
        "TextMediumRange": MessageLookupByLibrary.simpleMessage("中"),
        "TextNo": MessageLookupByLibrary.simpleMessage("否"),
        "TextNone": MessageLookupByLibrary.simpleMessage("無"),
        "TextOpenInJervis":
            MessageLookupByLibrary.simpleMessage("在Jervis作戰室打開"),
        "TextOpenInNoro6": MessageLookupByLibrary.simpleMessage("在制空權模擬器打開"),
        "TextSDamage": MessageLookupByLibrary.simpleMessage("小破"),
        "TextSave": MessageLookupByLibrary.simpleMessage("保存"),
        "TextShare": MessageLookupByLibrary.simpleMessage("分享"),
        "TextShortRange": MessageLookupByLibrary.simpleMessage("短"),
        "TextShouldClose": MessageLookupByLibrary.simpleMessage("要關閉嗎？"),
        "TextSlowSpeed": MessageLookupByLibrary.simpleMessage("低速"),
        "TextStatus": MessageLookupByLibrary.simpleMessage("狀態"),
        "TextSunken": MessageLookupByLibrary.simpleMessage("擊沉"),
        "TextSuperLongRange": MessageLookupByLibrary.simpleMessage("超長"),
        "TextSuperLongRangePlus": MessageLookupByLibrary.simpleMessage("超長+"),
        "TextTag": MessageLookupByLibrary.simpleMessage("標籤"),
        "TextTime": MessageLookupByLibrary.simpleMessage("時間"),
        "TextTitle": MessageLookupByLibrary.simpleMessage("標題"),
        "TextYes": MessageLookupByLibrary.simpleMessage("是"),
        "Theme": MessageLookupByLibrary.simpleMessage("主題"),
        "ToolSaveHomeCancel": MessageLookupByLibrary.simpleMessage("主頁URL已刪除"),
        "ToolSaveHomeFail": MessageLookupByLibrary.simpleMessage("無效的URL"),
        "ToolSaveHomeSuccess": MessageLookupByLibrary.simpleMessage("主頁URL已保存"),
        "ToolSearchBarURLSetting":
            MessageLookupByLibrary.simpleMessage("修改主頁URL"),
        "ToolTitleUtilities": MessageLookupByLibrary.simpleMessage("Utilities"),
        "ToolUASetting": MessageLookupByLibrary.simpleMessage("修改UA"),
        "ToolUATip": MessageLookupByLibrary.simpleMessage("設置後需重啟應用"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("工具"),
        "UrlExample": MessageLookupByLibrary.simpleMessage("URL範例："),
        "UrlRequestFormat": MessageLookupByLibrary.simpleMessage(
            "填入URL請求的返回必須為JSON，且結構與上述URL中的響應一致。"),
        "UseEmojiForFatigue":
            MessageLookupByLibrary.simpleMessage("使用emoji顯示疲勞度"),
        "VersionUpdateContent":
            MessageLookupByLibrary.simpleMessage("發現軟體版本已更新，請查看版本更新文檔。"),
        "VersionUpdateLinkText": MessageLookupByLibrary.simpleMessage("點擊此處查看"),
        "VersionUpdateTitle": MessageLookupByLibrary.simpleMessage("版本更新"),
        "WeaponData": MessageLookupByLibrary.simpleMessage("裝備資料"),
        "WebInfo": MessageLookupByLibrary.simpleMessage("網頁資訊"),
        "WikiDataLabel": MessageLookupByLibrary.simpleMessage("Wiki資料"),
        "YamlExample": MessageLookupByLibrary.simpleMessage("YAML範例：")
      };
}
