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
        "AboutButton": MessageLookupByLibrary.simpleMessage("本アプリ\nについて"),
        "AboutContributors": MessageLookupByLibrary.simpleMessage("貢献者"),
        "AboutDescription": MessageLookupByLibrary.simpleMessage(
            "Conning Towerはクロスプラットフォームプレイに対応した艦隊これくしょんの専用ブラウザです。"),
        "AboutVersion": MessageLookupByLibrary.simpleMessage("バージョン"),
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("再表示しない"),
        "AppBack": MessageLookupByLibrary.simpleMessage("戻る"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("ボトムアップ"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("キャッシュを消去"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("Cookieを消去"),
        "AppControlsClearCache":
            MessageLookupByLibrary.simpleMessage("キャッシュを消去しました"),
        "AppControlsLoad": m0,
        "AppControlsLogoutFailed": MessageLookupByLibrary.simpleMessage(
            "Cookieは見つかりません。すでにログアウトされている可能性があります。"),
        "AppControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("Cookieを消去しました。ログアウトに成功しました"),
        "AppControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebViewの準備がまだ整っていません"),
        "AppControlsReload": MessageLookupByLibrary.simpleMessage("リロード"),
        "AppControlsScrollDown": MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppControlsScrollUp": MessageLookupByLibrary.simpleMessage("上スクロール"),
        "AppForward": MessageLookupByLibrary.simpleMessage("前へ"),
        "AppHome": MessageLookupByLibrary.simpleMessage("ホーム"),
        "AppName": MessageLookupByLibrary.simpleMessage("Conning Tower"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督、Conning Towerへようこそ。Conning Towerは艦これの画面を自動的に全画面にします。もし画面が長時間DMM GAMESのトップバーから切り替わらなかった際は、「ツール-Web-HTTPリダイレクト」を押してください。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTPリダイレクト"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("リロード"),
        "AppResize": MessageLookupByLibrary.simpleMessage("画面に合わせてリサイズする"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("上スクロール"),
        "AssetsHtmlSearchBarGo": MessageLookupByLibrary.simpleMessage("開く"),
        "AssetsHtmlSearchBarText":
            MessageLookupByLibrary.simpleMessage("ウェブサイト名を検索または入力してください"),
        "Cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全画面表示に失敗しました"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全画面表示に成功しました"),
        "GameMute": MessageLookupByLibrary.simpleMessage("ミュート"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("ミュート解除"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("すでにゲームウィンドウが読み込まれています！"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("ゲームウィンドウが読み込まれました！"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("ゲームのロード中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("ゲームのリフレッシュは中断されました"),
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
            "iOS 15.0以降の端末をお使いの際、長時間DMM GAMESのトップバーと真っ白なページが表示されたままになることがあります。その場合、「ツール-Web-HTTPリダイレクト」を押すことでプレイ可能な状態になります。"),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage(
            "ミュートします。変更を適用するにはリロードを行ってください。"),
        "MsgUnmuteGame": MessageLookupByLibrary.simpleMessage(
            "ミュートを解除します。変更を適用するにはリロードを行ってください。"),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("設定"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("ゲームの画面を自動的に全画面する"),
        "SettingsHideFAB":
            MessageLookupByLibrary.simpleMessage("フローティングボタンを隠す"),
        "SettingsHomeLoad":
            MessageLookupByLibrary.simpleMessage("自動的にホームページのURLがロードする"),
        "SettingsHomeSave":
            MessageLookupByLibrary.simpleMessage("現在のサイトをホームページURLに設定する"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("画面の方向を固定する"),
        "SettingsLockDeviceOrientationTip":
            MessageLookupByLibrary.simpleMessage("iPadでは使用不可"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("アプリを初期化"),
        "ToolSaveHomeCancel":
            MessageLookupByLibrary.simpleMessage("ホームページのURLが削除されました"),
        "ToolSaveHomeFail": MessageLookupByLibrary.simpleMessage("無効なURL"),
        "ToolSaveHomeSuccess":
            MessageLookupByLibrary.simpleMessage("ホームページのURLを保存しました"),
        "ToolSearchBarURLSetting":
            MessageLookupByLibrary.simpleMessage("ホームページURLを編集する"),
        "ToolTitleGameScreen": MessageLookupByLibrary.simpleMessage("画面"),
        "ToolTitleGameSound": MessageLookupByLibrary.simpleMessage("ゲームの音声"),
        "ToolUASetting": MessageLookupByLibrary.simpleMessage("UAを編集する"),
        "ToolUATip":
            MessageLookupByLibrary.simpleMessage("変更を適用するにはアプリを再起動してください"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("ツール")
      };
}
