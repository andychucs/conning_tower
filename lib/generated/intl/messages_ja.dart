// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(url) => "URL をロード: ${url}";

  static String m1(url) => "Now navigation to ${url}";

  static String m2(url) => "ページの読み込みが完了しました: ${url}";

  static String m3(url) => "ページの読み込み開始:${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AppBack": MessageLookupByLibrary.simpleMessage("戻る"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("ボトムアップ"),
        "AppHome": MessageLookupByLibrary.simpleMessage("ホーム"),
        "AppLeftSideControlsLoad": m0,
        "AppLeftSideControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView の準備が整っていません"),
        "AppLeftSideControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppLeftSideControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("上スクロール"),
        "AppName": MessageLookupByLibrary.simpleMessage("艦橋"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督、艦橋へようこそ、艦橋は艦これの画面を自動的に全画面にします、もし長い間DMM GAMESのトップバーを見る場合、艦隊の指示の前にHTTPリダイレクトを押してください。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTP リダイレクト"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("リフレッシュ"),
        "AppResize": MessageLookupByLibrary.simpleMessage("画面変換"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("上スクロール"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全画面表示失敗"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全画面表示成功"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("ゲームウィンドウに読み込まれました！"),
        "KCViewFuncMsgNavi": m1,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("ゲームのロードが完了しました"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("ゲームの読み込みに失敗しました"),
        "KCViewFuncMsgPageFinished": m2,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("ゲームオリジンURLです"),
        "KCViewFuncMsgPageStart": m3,
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "iOS 15.0以降をお使いの提督は、DMM GAMESのトップバーが表示され、真っ白なページが表示される場合、HTTPリダイレクトを押してください。")
      };
}
