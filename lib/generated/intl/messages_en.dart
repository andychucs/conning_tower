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

  static String m1(url) => "Now navigation to ${url}";

  static String m2(url) => "Page finished loading: ${url}";

  static String m3(url) => "Page started loading: ${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("About"),
        "AboutDescription": MessageLookupByLibrary.simpleMessage(
            "Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser."),
        "AlertNotShowAgain":
            MessageLookupByLibrary.simpleMessage("Don\'t show again"),
        "AppBack": MessageLookupByLibrary.simpleMessage("Back"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("Bottom-up"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("Clear Cache"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("Logout"),
        "AppForward": MessageLookupByLibrary.simpleMessage("Forward"),
        "AppHome": MessageLookupByLibrary.simpleMessage("Home"),
        "AppLeftSideControlsClearCache":
            MessageLookupByLibrary.simpleMessage("Cache cleared."),
        "AppLeftSideControlsLoad": m0,
        "AppLeftSideControlsLogoutFailed": MessageLookupByLibrary.simpleMessage(
            "There are no cookies. May not need logout."),
        "AppLeftSideControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage(
                "Cookies are gone, website logout success"),
        "AppLeftSideControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView not ready"),
        "AppLeftSideControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("Scroll down"),
        "AppLeftSideControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("Scroll up"),
        "AppName": MessageLookupByLibrary.simpleMessage("Conning Tower"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "Admiral, welcome to the bridge, the bridge will make the Kancolle interface automatically full screen, if you see the top bar of DMM GAMES for a long time, please click the \'Tools-Web-HTTP Redirect\' button before you command."),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTP Redirect"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "AppResize":
            MessageLookupByLibrary.simpleMessage("Resize to Fit Screen"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("Scroll Down"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("Scroll Up"),
        "Cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("Fullscreen fail"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("Fullscreen success"),
        "GameMute": MessageLookupByLibrary.simpleMessage("Off"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("On"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("Already in game window!"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("Loaded in game window!"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("Game homepage is loading"),
        "KCViewFuncMsgGameNaviBlock": MessageLookupByLibrary.simpleMessage(
            "refresh on game homepage is block"),
        "KCViewFuncMsgNavi": m1,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("Game load completed"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("Game load failed"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("Game not load complete yet"),
        "KCViewFuncMsgPageFinished": m2,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("is game origin url"),
        "KCViewFuncMsgPageStart": m3,
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "For Admiral using iOS 15.0 or above, when you see the top bar of DMM GAMES displayed and get a blank page, please click \'Tools-Web-HTTP Redirect\' button."),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage(
            "The game will be muted after refreshing."),
        "MsgUnmuteGame": MessageLookupByLibrary.simpleMessage(
            "The game will be unmuted after refreshing."),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("Settings"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("Enable Auto Fullscreen"),
        "SettingsHideFAB":
            MessageLookupByLibrary.simpleMessage("Hide Floating Action Button"),
        "SettingsHomeLoad": MessageLookupByLibrary.simpleMessage(
            "Auto Open KanColle on Launch"),
        "SettingsHomeSave": MessageLookupByLibrary.simpleMessage(
            "Make Current Web Page as Home"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("Lock Screen Orientation"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("Reset App"),
        "ToolTitleGameScreen":
            MessageLookupByLibrary.simpleMessage("Game Screen"),
        "ToolTitleGameSound":
            MessageLookupByLibrary.simpleMessage("Game Sound"),
        "ToolTitleWeb": MessageLookupByLibrary.simpleMessage("Web"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("Tools")
      };
}
