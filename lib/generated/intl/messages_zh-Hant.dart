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

  static String m1(url) => "正在加載 ${url}";

  static String m2(url) => "頁面加載完畢: ${url}";

  static String m3(url) => "頁面開始載入 ${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("關於"),
        "AboutContributors": MessageLookupByLibrary.simpleMessage("貢獻者"),
        "AboutDescription": MessageLookupByLibrary.simpleMessage(
            "艦橋是一款跨平台艦隊Collection「艦隊これくしょん-艦これ-」專用瀏覽器。"),
        "AboutVersion": MessageLookupByLibrary.simpleMessage("版本"),
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("不再顯示"),
        "AppBack": MessageLookupByLibrary.simpleMessage("上一頁"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("底部上移"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("刪除緩存"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("刪除Cookie"),
        "AppForward": MessageLookupByLibrary.simpleMessage("下一頁"),
        "AppHome": MessageLookupByLibrary.simpleMessage("主頁"),
        "AppLeftSideControlsClearCache":
            MessageLookupByLibrary.simpleMessage("已刪除緩存"),
        "AppLeftSideControlsLoad": m0,
        "AppLeftSideControlsLogoutFailed":
            MessageLookupByLibrary.simpleMessage("未找到Cookie"),
        "AppLeftSideControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("已成功刪除Cookie"),
        "AppLeftSideControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView還沒有準備好"),
        "AppLeftSideControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("向下捲動"),
        "AppLeftSideControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("向上捲動"),
        "AppName": MessageLookupByLibrary.simpleMessage("艦橋"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督，歡迎來到艦橋，艦橋會在Kancolle界面加載完成後自動調整屏幕尺寸到合適大小，如果長時間看到DMM GAMES的頂欄存在，請在你指揮艦隊前點擊「工具-Web-重定向」。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("重定向"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("重新整理"),
        "AppResize": MessageLookupByLibrary.simpleMessage("調整大小至適合屏幕"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("向下捲動"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("向上捲動"),
        "AssetsHtmlSearchBarGo": MessageLookupByLibrary.simpleMessage("前往"),
        "AssetsHtmlSearchBarText":
            MessageLookupByLibrary.simpleMessage("搜尋或輸入網站名稱"),
        "Cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全螢幕失敗"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全螢幕成功"),
        "GameMute": MessageLookupByLibrary.simpleMessage("遊戲靜音"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("遊戲解除靜音"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("已載入遊戲視窗，無需執行"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("已載入遊戲視窗！"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("遊戲視窗載入中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("遊戲視窗的重載已被攔截"),
        "KCViewFuncMsgNavi": m1,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("遊戲加載完成"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("遊戲加載失敗"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("遊戲未加載完畢"),
        "KCViewFuncMsgPageFinished": m2,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("當前頁面為遊戲url"),
        "KCViewFuncMsgPageStart": m3,
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "使用iOS 15.0或以上版本系統的提督請注意，當你看到DMM GAMES頂欄有顯示並白屏時，請點擊「工具-Web-重定向」。"),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage("遊戲將會在重新載入後靜音。"),
        "MsgUnmuteGame":
            MessageLookupByLibrary.simpleMessage("遊戲將會在重新載入後解除靜音。"),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("設定"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("啟用自動全螢幕"),
        "SettingsHideFAB": MessageLookupByLibrary.simpleMessage("隱藏浮動操作按鈕"),
        "SettingsHomeLoad":
            MessageLookupByLibrary.simpleMessage("啟動時自動打開主頁URL"),
        "SettingsHomeSave":
            MessageLookupByLibrary.simpleMessage("將當前網頁設置為主頁URL"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("鎖定屏幕方向"),
        "SettingsLockDeviceOrientationTip":
            MessageLookupByLibrary.simpleMessage("不適用於iPad"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("重設"),
        "ToolSaveHomeCancel": MessageLookupByLibrary.simpleMessage("主頁URL已刪除"),
        "ToolSaveHomeFail": MessageLookupByLibrary.simpleMessage("無效的URL"),
        "ToolSaveHomeSuccess": MessageLookupByLibrary.simpleMessage("主頁URL已保存"),
        "ToolSearchBarURLSetting":
            MessageLookupByLibrary.simpleMessage("修改主頁URL"),
        "ToolUASetting": MessageLookupByLibrary.simpleMessage("修改UA"),
        "ToolUATip": MessageLookupByLibrary.simpleMessage("設置後需重啟應用"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("工具")
      };
}
