// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans locale. All the
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
  String get localeName => 'zh_Hans';

  static String m0(url) => "加载URl：${url}";

  static String m1(url) => "正在访问${url}";

  static String m2(url) => "页面加载完毕：${url}";

  static String m3(url) => "页面开始加载：${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("关于"),
        "AboutDescription": MessageLookupByLibrary.simpleMessage(
            "舰桥是一款跨平台舰队Collection「艦隊これくしょん-艦これ-」专用浏览器。"),
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("不再显示"),
        "AppBack": MessageLookupByLibrary.simpleMessage("返回"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("底部上移"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("清除缓存"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("退出登录"),
        "AppHome": MessageLookupByLibrary.simpleMessage("主页"),
        "AppLeftSideControlsClearCache":
            MessageLookupByLibrary.simpleMessage("缓存已删除"),
        "AppLeftSideControlsLoad": m0,
        "AppLeftSideControlsLogoutFailed":
            MessageLookupByLibrary.simpleMessage("未发现Cookie，可能不需要退出登陆"),
        "AppLeftSideControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("Cookie已清除，已退出网站登陆"),
        "AppLeftSideControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView还没有准备好"),
        "AppLeftSideControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("向下滚动"),
        "AppLeftSideControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("向上滚动"),
        "AppName": MessageLookupByLibrary.simpleMessage("舰桥"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督，欢迎来到舰桥，舰桥会在Kancolle界面加载完成后自动调整屏幕尺寸到合适大小，如果长时间看到DMM GAMES的顶栏存在，请在你指挥舰队前点击HTTP跳转按钮。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTP跳转"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("刷新"),
        "AppResize": MessageLookupByLibrary.simpleMessage("调整尺寸"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("向下滚动"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("向上滚动"),
        "Cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("屏幕调整失败"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("屏幕调整完毕"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("已进入游戏页面，无需执行"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("已进入游戏页面"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("游戏主页加载中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("游戏主页的重载已被拦截"),
        "KCViewFuncMsgNavi": m1,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("游戏加载完毕"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("游戏加载失败"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("游戏尚未加载完毕"),
        "KCViewFuncMsgPageFinished": m2,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("当前页面为游戏原链接"),
        "KCViewFuncMsgPageStart": m3,
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "使用iOS 15.0或以上版本系统的提督请注意，当你看到DMM GAMES顶栏有显示并白屏时，请点击HTTP跳转按钮。"),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("设置"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("重設"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("工具")
      };
}
