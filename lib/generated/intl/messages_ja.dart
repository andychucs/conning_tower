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

  static String m0(url) => "URLをロード: ${url}";

  static String m1(url) => "Now navigation to ${url}";

  static String m2(url) => "ページの読み込みが完了しました: ${url}";

  static String m3(url) => "ページの読み込み開始:${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("再表示しない"),
        "AppBack": MessageLookupByLibrary.simpleMessage("戻る"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("ボトムアップ"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("キャッシュ\nを消去"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "AppHome": MessageLookupByLibrary.simpleMessage("ホーム"),
        "AppLeftSideControlsClearCache":
            MessageLookupByLibrary.simpleMessage("キャッシュを消去が完了しました"),
        "AppLeftSideControlsLoad": m0,
        "AppLeftSideControlsLogoutFailed":
            MessageLookupByLibrary.simpleMessage("Cookieは見つかりません、ログアウトが必要ないかも"),
        "AppLeftSideControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("Cookieを消去しました、ログアウトが成功しました"),
        "AppLeftSideControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebViewの準備がまだ整っていません"),
        "AppLeftSideControlsScrollDown":
            MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppLeftSideControlsScrollUp":
            MessageLookupByLibrary.simpleMessage("上スクロール"),
        "AppName": MessageLookupByLibrary.simpleMessage("conning tower"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督、conning towerへようこそ。conning towerは艦これの画面を自動的に全画面にします。もし画面が長時間DMM GAMESのトップバーから切り替わらなかった際は、HTTPリダイレクトを押してください。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTP\nリダイレクト"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("リフレッシュ"),
        "AppResize": MessageLookupByLibrary.simpleMessage("画面変換"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("上スクロール"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全画面表示に失敗しました"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全画面表示に成功しました"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("すでにゲームウィンドウが読み込まれています！"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("ゲームウィンドウが読み込まれました！"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("艦これのロード中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("艦これのリフレッシュは遮断されました"),
        "KCViewFuncMsgNavi": m1,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("ゲームのロードが完了しました"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("ゲームの読み込みに失敗しました"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("ゲームのロードはまだ完了しません"),
        "KCViewFuncMsgPageFinished": m2,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("ゲームオリジンURLです"),
        "KCViewFuncMsgPageStart": m3,
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "iOS 15.0以降の端末をお使いの際、長時間DMM GAMESのトップバーと真っ白なページが表示されたままになることがあります。その場合、HTTPリダイレクトを押すことでプレイ可能な状態になります。")
      };
}
