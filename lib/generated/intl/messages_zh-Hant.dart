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

  static String m1(url) => "Now navigation to ${url}";

  static String m2(url) => "Page finished loading: ${url}";

  static String m3(url) => "頁面開始載入 ${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AppBack": MessageLookupByLibrary.simpleMessage("返回"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("底部上移"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("刪除緩存"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("登出"),
        "AppHome": MessageLookupByLibrary.simpleMessage("首頁"),
        "AppLeftSideControlsClearCache":
            MessageLookupByLibrary.simpleMessage("已刪除緩存"),
        "AppLeftSideControlsLoad": m0,
        "AppLeftSideControlsLogoutFailed":
            MessageLookupByLibrary.simpleMessage("未找到Cookie"),
        "AppLeftSideControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("已成功刪除Cookie"),
        "AppLeftSideControlsNotReady":
            MessageLookupByLibrary.simpleMessage("Web 視圖還沒有準備好"),
        "AppLeftSideControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("向下捲動"),
        "AppLeftSideControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("向上捲動"),
        "AppName": MessageLookupByLibrary.simpleMessage("艦橋"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "Admiral, welcome to the bridge, the bridge will make the Kancolle interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the HTTP Redirect button before you command."),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("重定向"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("重新整理"),
        "AppResize": MessageLookupByLibrary.simpleMessage("調整大小"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("向下捲動"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("向上捲動"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全螢幕失敗"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全螢幕成功"),
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
            MessageLookupByLibrary.simpleMessage("is game origin url"),
        "KCViewFuncMsgPageStart": m3,
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click HTTP Redirect button.")
      };
}
