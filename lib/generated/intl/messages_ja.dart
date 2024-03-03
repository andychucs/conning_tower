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

  static String m1(count) => "艦娘数: ${count}";

  static String m2(url) => "Now navigation to ${url}";

  static String m3(url) => "ページの読み込みが完了しました: ${url}";

  static String m4(url) => "ページの読み込み開始:${url}";

  static String m5(taskTitle) => "${taskTitle} が完了しました。";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("情報"),
        "AboutContributors": MessageLookupByLibrary.simpleMessage("貢献者"),
        "AboutDescriptionOpen": MessageLookupByLibrary.simpleMessage(
            "Conning Towerはクロスプラットフォームプレイに対応した艦隊これくしょんの専用ブラウザです。"),
        "AboutDescriptionStore": MessageLookupByLibrary.simpleMessage(
            "「ConningTower for iOS」は、ブラウザゲーム専用のブラウザで、画面をカスタマイズして、デスクトップビューで常に横向き画面を保持することができます。"),
        "AboutVersion": MessageLookupByLibrary.simpleMessage("バージョン"),
        "ActiveMainWebPage":
            MessageLookupByLibrary.simpleMessage("アクティブなメインウェブページ"),
        "AddDataSource": MessageLookupByLibrary.simpleMessage("データソースを追加"),
        "AdvancedGameSupport":
            MessageLookupByLibrary.simpleMessage("高度なゲームサポート"),
        "AdvancedGameSupportDescription": MessageLookupByLibrary.simpleMessage(
            "当チームはゲームの運営を行っておらず、この機能は公開データおよびサードパーティライブラリ、Web実行環境に基づいています。正確性を保証するものではありません。サポートしてほしいゲームや機能がある場合、技術サポートにご連絡いただければ幸いです。"),
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("再表示しない"),
        "AppBack": MessageLookupByLibrary.simpleMessage("戻る"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("下部に余白を追加"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("キャッシュを消去"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("Cookieを消去"),
        "AppControlsClearCache":
            MessageLookupByLibrary.simpleMessage("キャッシュを消去しました"),
        "AppControlsHide": MessageLookupByLibrary.simpleMessage("サイドバーを隠す"),
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
        "AppControlsShow": MessageLookupByLibrary.simpleMessage("サイドバーを表示"),
        "AppForward": MessageLookupByLibrary.simpleMessage("前へ"),
        "AppHome": MessageLookupByLibrary.simpleMessage("ホーム"),
        "AppLayoutClean": MessageLookupByLibrary.simpleMessage("シンプル"),
        "AppLayoutJoystickAndFAB":
            MessageLookupByLibrary.simpleMessage("ジョイスティックとフローティングボタン"),
        "AppLayoutMultiFunctionAndFAB":
            MessageLookupByLibrary.simpleMessage("多機能ボタンとフローティングボタン"),
        "AppLayoutMultiFunctionButton":
            MessageLookupByLibrary.simpleMessage("多機能ボタン"),
        "AppLayoutOnlyFAB":
            MessageLookupByLibrary.simpleMessage("フローティングボタンのみ"),
        "AppLayoutOnlyJoystick":
            MessageLookupByLibrary.simpleMessage("ジョイスティックのみ"),
        "AppLayoutSetting": MessageLookupByLibrary.simpleMessage("アプリのレイアウト設定"),
        "AppName": MessageLookupByLibrary.simpleMessage("Conning Tower"),
        "AppNotificationManagement":
            MessageLookupByLibrary.simpleMessage("通知管理"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督、Conning Towerへようこそ。Conning Towerはゲームの画面を自動的に全画面にします。もし画面が長時間DMM GAMESのトップバーから切り替わらなかった際は、「ツール-Web-HTTPリダイレクト」を押してください。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTPリダイレクト"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("リロード"),
        "AppResize": MessageLookupByLibrary.simpleMessage("画面に合わせてリサイズする"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("下スクロール"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("上スクロール"),
        "AppStoreRating":
            MessageLookupByLibrary.simpleMessage("App Storeで評価する"),
        "AssetsHtmlSearchBarGo": MessageLookupByLibrary.simpleMessage("開く"),
        "AssetsHtmlSearchBarText":
            MessageLookupByLibrary.simpleMessage("ウェブサイト名を検索または入力してください"),
        "ClearAllPendingNotifications":
            MessageLookupByLibrary.simpleMessage("保留中のすべての通知をクリア"),
        "DarkTheme": MessageLookupByLibrary.simpleMessage("ダークテーマ"),
        "DashboardSetting":
            MessageLookupByLibrary.simpleMessage("ホームページでダッシュボードを表示"),
        "DataDownloadGuide": MessageLookupByLibrary.simpleMessage(
            "艦これデータリスナー機能を使用するには、ツール→高度なゲームサポートに進み、データをダウンロードし、スイッチをオンにしてください。異常が発生した場合は、設定でアプリを初期化してください。"),
        "DesktopMode": MessageLookupByLibrary.simpleMessage("デスクトップモード"),
        "DocsNewUrl": MessageLookupByLibrary.simpleMessage(
            "https://conntower.github.io/docs/ja/new"),
        "DownloadFleetData":
            MessageLookupByLibrary.simpleMessage("艦隊データをダウンロード"),
        "DownloadOperationData":
            MessageLookupByLibrary.simpleMessage("遠征データをダウンロード"),
        "EmptyFieldError":
            MessageLookupByLibrary.simpleMessage("フィールドは空にできません。"),
        "Error": MessageLookupByLibrary.simpleMessage("エラー発生"),
        "FleetData": MessageLookupByLibrary.simpleMessage("艦隊データ"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("全画面表示に失敗しました"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("全画面表示に成功しました"),
        "Game": MessageLookupByLibrary.simpleMessage("ゲーム"),
        "GameMute": MessageLookupByLibrary.simpleMessage("ミュート"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("ミュート解除"),
        "InvalidJsonError":
            MessageLookupByLibrary.simpleMessage("無効なJSON形式です。"),
        "InvalidUrlError": MessageLookupByLibrary.simpleMessage("無効なURLです。"),
        "InvalidYamlError":
            MessageLookupByLibrary.simpleMessage("無効なYAML形式です。"),
        "JsonExample": MessageLookupByLibrary.simpleMessage("JSON例："),
        "KCDashboardBattleDescription": MessageLookupByLibrary.simpleMessage(
            "現在、通常艦隊対通常艦隊の昼戦と夜戦（開幕夜戦不能）の中で、航空戦、対潜戦、砲撃戦、雷撃戦のみが解析可能です。"),
        "KCDashboardBattleReport": MessageLookupByLibrary.simpleMessage("戦闘情報"),
        "KCDashboardCommand": MessageLookupByLibrary.simpleMessage("司令部"),
        "KCDashboardFleet": MessageLookupByLibrary.simpleMessage("艦隊"),
        "KCDashboardFleetDescription": MessageLookupByLibrary.simpleMessage(
            "リストアイテムの右側にはステータスインジケータがあり、外環は疲労度を表します。浅黄色の場合、疲労度は49を示します。中心には燃料および弾薬のステータスが表示され、どちらも満タンの場合は緑色です。どちらかが満タンでない場合はオレンジ色です。アイテムをクリックして詳細な数値を表示できます。"),
        "KCDashboardOperation": MessageLookupByLibrary.simpleMessage("遠征"),
        "KCDashboardQuest": MessageLookupByLibrary.simpleMessage("任務"),
        "KCDashboardQuestCompleted": MessageLookupByLibrary.simpleMessage("達成"),
        "KCDashboardQuestDone": MessageLookupByLibrary.simpleMessage("完了"),
        "KCDashboardQuestInProgress":
            MessageLookupByLibrary.simpleMessage("遂行中"),
        "KCDashboardQuestToDo": MessageLookupByLibrary.simpleMessage("未受諾"),
        "KCDashboardShipAA": MessageLookupByLibrary.simpleMessage("対空"),
        "KCDashboardShipASW": MessageLookupByLibrary.simpleMessage("対潜"),
        "KCDashboardShipAircraftPower":
            MessageLookupByLibrary.simpleMessage("制空"),
        "KCDashboardShipAmmo": MessageLookupByLibrary.simpleMessage("弾薬"),
        "KCDashboardShipArmor": MessageLookupByLibrary.simpleMessage("装甲"),
        "KCDashboardShipCondition": MessageLookupByLibrary.simpleMessage("疲労度"),
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
            MessageLookupByLibrary.simpleMessage("索敵スコア"),
        "KCDashboardShipSpeed": MessageLookupByLibrary.simpleMessage("速力"),
        "KCDashboardShipTorpedo": MessageLookupByLibrary.simpleMessage("雷装"),
        "KCDashboardShipTotalAttack":
            MessageLookupByLibrary.simpleMessage("火力雷装合計"),
        "KCDashboardShipUpgradeLevel":
            MessageLookupByLibrary.simpleMessage("改造レベル"),
        "KCDashboardShipViewerCount": m1,
        "KCDashboardShipViewerFilterShipClass":
            MessageLookupByLibrary.simpleMessage("艦級"),
        "KCDashboardShipViewerFilterShipSlot":
            MessageLookupByLibrary.simpleMessage("装備"),
        "KCDashboardShipViewerFilterShipSlotHaveExSlot":
            MessageLookupByLibrary.simpleMessage("補強増設済み"),
        "KCDashboardShipViewerFilterShipSlotNoExSlot":
            MessageLookupByLibrary.simpleMessage("補強増設していない"),
        "KCDashboardShipViewerFilterShipStatus":
            MessageLookupByLibrary.simpleMessage("状態"),
        "KCDashboardShipViewerFilterShipStatusCanUpgrade":
            MessageLookupByLibrary.simpleMessage("改造可能"),
        "KCDashboardShipViewerFilterShipStatusUpgraded":
            MessageLookupByLibrary.simpleMessage("改造済み"),
        "KCDashboardShipViewerFilterShipStatusWaitUpgrade":
            MessageLookupByLibrary.simpleMessage("改造準備完了"),
        "KCDashboardShipViewerFilterShipType":
            MessageLookupByLibrary.simpleMessage("艦種"),
        "KCDashboardShipViewerFilterSpeed":
            MessageLookupByLibrary.simpleMessage("速力"),
        "KCDashboardShipViewerSortAAAsc":
            MessageLookupByLibrary.simpleMessage("対空昇順"),
        "KCDashboardShipViewerSortAADesc":
            MessageLookupByLibrary.simpleMessage("対空降順"),
        "KCDashboardShipViewerSortASWAsc":
            MessageLookupByLibrary.simpleMessage("対潜昇順"),
        "KCDashboardShipViewerSortASWDesc":
            MessageLookupByLibrary.simpleMessage("対潜降順"),
        "KCDashboardShipViewerSortArmorAsc":
            MessageLookupByLibrary.simpleMessage("装甲昇順"),
        "KCDashboardShipViewerSortArmorDesc":
            MessageLookupByLibrary.simpleMessage("装甲降順"),
        "KCDashboardShipViewerSortAttackAsc":
            MessageLookupByLibrary.simpleMessage("火力雷装昇順"),
        "KCDashboardShipViewerSortAttackDesc":
            MessageLookupByLibrary.simpleMessage("火力雷装降順"),
        "KCDashboardShipViewerSortConditionAsc":
            MessageLookupByLibrary.simpleMessage("疲労度昇順"),
        "KCDashboardShipViewerSortConditionDesc":
            MessageLookupByLibrary.simpleMessage("疲労度降順"),
        "KCDashboardShipViewerSortLevelAsc":
            MessageLookupByLibrary.simpleMessage("レベル昇順"),
        "KCDashboardShipViewerSortLevelDesc":
            MessageLookupByLibrary.simpleMessage("レベル降順"),
        "KCDashboardShipViewerSortLuckAsc":
            MessageLookupByLibrary.simpleMessage("運昇順"),
        "KCDashboardShipViewerSortLuckDesc":
            MessageLookupByLibrary.simpleMessage("運降順"),
        "KCDashboardShipViewerSortUIDAsc":
            MessageLookupByLibrary.simpleMessage("獲得日昇順"),
        "KCDashboardShipViewerSortUIDDesc":
            MessageLookupByLibrary.simpleMessage("獲得日降順"),
        "KCDashboardShipViewerTitle":
            MessageLookupByLibrary.simpleMessage("艦娘"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("すでにゲームウィンドウが読み込まれています！"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("ゲームウィンドウが読み込まれました！"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("ゲームのロード中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("ゲームのリフレッシュは中断されました"),
        "KCViewFuncMsgNavi": m2,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("ゲームのロードが完了しました"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("ゲームの読み込みに失敗しました"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("ゲームのロードはまだ完了しません"),
        "KCViewFuncMsgPageFinished": m3,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("ゲームオリジンURLです"),
        "KCViewFuncMsgPageStart": m4,
        "KanColleDataListener": MessageLookupByLibrary.simpleMessage("データリスナー"),
        "KanColleLogbook": MessageLookupByLibrary.simpleMessage("航海日誌"),
        "LightTheme": MessageLookupByLibrary.simpleMessage("ライトテーマ"),
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "iOS 15.0以降の端末をお使いの際、長時間DMM GAMESのトップバーと真っ白なページが表示されたままになることがあります。その場合、「ツール-Web-HTTPリダイレクト」を押すことでプレイ可能な状態になります。"),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage(
            "ミュートします。変更を適用するにはリロードを行ってください。"),
        "MsgUnmuteGame": MessageLookupByLibrary.simpleMessage(
            "ミュートを解除します。変更を適用するにはリロードを行ってください。"),
        "OpenDashboard": MessageLookupByLibrary.simpleMessage("ダッシュボードを開く"),
        "OperationData": MessageLookupByLibrary.simpleMessage("遠征データ"),
        "PendingNotificationCount":
            MessageLookupByLibrary.simpleMessage("保留中の通知の数"),
        "PendingNotifications": MessageLookupByLibrary.simpleMessage("保留中の通知"),
        "PhotoAlbum": MessageLookupByLibrary.simpleMessage("アルバム"),
        "PhotoAlbumPermissionDescription": MessageLookupByLibrary.simpleMessage(
            "アプリ内で写真を表示するには、アクセスを許可してください。"),
        "PhotoAlbumPermissionReminder": MessageLookupByLibrary.simpleMessage(
            "写真が表示されない場合、システム設定でアクセス権限を開いてください。"),
        "PhotoAlbumPermissionRequest":
            MessageLookupByLibrary.simpleMessage("システム設定へ"),
        "ScreenshotFailDialog": MessageLookupByLibrary.simpleMessage(
            "スクリーンショットの保存に失敗しました。写真へのアクセスを許可していただけますか？"),
        "ScreenshotSuccessDialog":
            MessageLookupByLibrary.simpleMessage("スクリーンショットが保存されました"),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("設定"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("ゲームの画面を自動的に全画面する"),
        "SettingsHideFAB":
            MessageLookupByLibrary.simpleMessage("フローティングボタンを隠す"),
        "SettingsHomeLoad":
            MessageLookupByLibrary.simpleMessage("自動的にホームページのURLがロードする"),
        "SettingsHomeLoadShort": MessageLookupByLibrary.simpleMessage("自動ロード"),
        "SettingsHomeSave":
            MessageLookupByLibrary.simpleMessage("現在のサイトをホームページURLに設定する"),
        "SettingsHomeSaveShort": MessageLookupByLibrary.simpleMessage("ホームページ"),
        "SettingsLandscape": MessageLookupByLibrary.simpleMessage("横画面"),
        "SettingsLandscapeLeft": MessageLookupByLibrary.simpleMessage("横画面左"),
        "SettingsLandscapeRight": MessageLookupByLibrary.simpleMessage("横画面右"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("画面の方向を固定する"),
        "SettingsLockDeviceOrientationTip":
            MessageLookupByLibrary.simpleMessage("iPadでは使用不可"),
        "SettingsPortrait": MessageLookupByLibrary.simpleMessage("縦画面"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("アプリを初期化"),
        "SettingsScreenOrientation":
            MessageLookupByLibrary.simpleMessage("画面の向きを設定する"),
        "ShipData": MessageLookupByLibrary.simpleMessage("艦船データ"),
        "StatusCode": MessageLookupByLibrary.simpleMessage("ステータス"),
        "SystemTheme": MessageLookupByLibrary.simpleMessage("システムに従う"),
        "TakeScreenshot": MessageLookupByLibrary.simpleMessage("スクリーンショット"),
        "TaskCompleted": m5,
        "TaskDashboardTitle": MessageLookupByLibrary.simpleMessage("タスク"),
        "TaskNotAdded": MessageLookupByLibrary.simpleMessage("タスクが追加されていません"),
        "TaskNotificationAdded":
            MessageLookupByLibrary.simpleMessage("タスク通知が追加されました"),
        "TaskPageOperationTip": MessageLookupByLibrary.simpleMessage(
            "以下のタスクの通知を追加する場合は、このアイテムをタップしてください"),
        "TaskPageTitle": MessageLookupByLibrary.simpleMessage("タスクタイマー"),
        "TaskReminders": MessageLookupByLibrary.simpleMessage("タスクリマインダー"),
        "TaskRemindersHelpContent": MessageLookupByLibrary.simpleMessage(
            "タスクリマインダー機能により、タスクのリマインダーを追加および管理できます。\n\n- データソースを追加するには、右上隅の[データソースの追加]ボタンをクリックし、有効なURLまたはYAML/JSONの内容を入力します。\n\n- 変更を保存するには、「保存」ボタンをクリックしてください。\n\n- 追加されたタスクはリストに表示されます。\n\n- タスクをダブルクリックすると、そのタスクのリマインダー通知が追加されます。\n\n- タスク情報ページに入るには、タスクをクリックして詳細情報を表示します。\n\n- タスク情報ページで、右上隅の上向き矢印ボタンをクリックすると、タスクをタスクリストのトップに固定できます。\n\n- 何か問題がある場合は、サポートチームにお問い合わせください。\n\nお楽しみください！"),
        "TasksNumOverLimit":
            MessageLookupByLibrary.simpleMessage("タスク数が制限を超えています。"),
        "TextAll": MessageLookupByLibrary.simpleMessage("全部"),
        "TextCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "TextEquipment": MessageLookupByLibrary.simpleMessage("装備"),
        "TextFastPlusSpeed": MessageLookupByLibrary.simpleMessage("高速+"),
        "TextFastSpeed": MessageLookupByLibrary.simpleMessage("高速"),
        "TextFastestSpeed": MessageLookupByLibrary.simpleMessage("最速"),
        "TextFleetGirl": MessageLookupByLibrary.simpleMessage("艦娘"),
        "TextHelp": MessageLookupByLibrary.simpleMessage("ヘルプ"),
        "TextId": MessageLookupByLibrary.simpleMessage("ID"),
        "TextItem": MessageLookupByLibrary.simpleMessage("アイテム"),
        "TextLDamage": MessageLookupByLibrary.simpleMessage("大破"),
        "TextLongRange": MessageLookupByLibrary.simpleMessage("長"),
        "TextMDamage": MessageLookupByLibrary.simpleMessage("中破"),
        "TextMediumRange": MessageLookupByLibrary.simpleMessage("中"),
        "TextNo": MessageLookupByLibrary.simpleMessage("いいえ"),
        "TextNone": MessageLookupByLibrary.simpleMessage("無"),
        "TextSDamage": MessageLookupByLibrary.simpleMessage("小破"),
        "TextSave": MessageLookupByLibrary.simpleMessage("保存"),
        "TextShortRange": MessageLookupByLibrary.simpleMessage("短"),
        "TextShouldClose": MessageLookupByLibrary.simpleMessage("閉じてよろしいですか？"),
        "TextSlowSpeed": MessageLookupByLibrary.simpleMessage("低速"),
        "TextStatus": MessageLookupByLibrary.simpleMessage("状態"),
        "TextSunken": MessageLookupByLibrary.simpleMessage("撃沈"),
        "TextSuperLongRange": MessageLookupByLibrary.simpleMessage("超長"),
        "TextSuperLongRangePlus": MessageLookupByLibrary.simpleMessage("超長+"),
        "TextTag": MessageLookupByLibrary.simpleMessage("タグ"),
        "TextTime": MessageLookupByLibrary.simpleMessage("時間"),
        "TextTitle": MessageLookupByLibrary.simpleMessage("タイトル"),
        "TextYes": MessageLookupByLibrary.simpleMessage("はい"),
        "Theme": MessageLookupByLibrary.simpleMessage("テーマ"),
        "ToolSaveHomeCancel":
            MessageLookupByLibrary.simpleMessage("ホームページのURLが削除されました"),
        "ToolSaveHomeFail": MessageLookupByLibrary.simpleMessage("無効なURL"),
        "ToolSaveHomeSuccess":
            MessageLookupByLibrary.simpleMessage("ホームページのURLを保存しました"),
        "ToolSearchBarURLSetting":
            MessageLookupByLibrary.simpleMessage("ホームページURLを編集する"),
        "ToolTitleGameScreen": MessageLookupByLibrary.simpleMessage("画面"),
        "ToolTitleGameSound": MessageLookupByLibrary.simpleMessage("ゲームの音声"),
        "ToolTitleUtilities": MessageLookupByLibrary.simpleMessage("ユーティリティ"),
        "ToolUASetting": MessageLookupByLibrary.simpleMessage("UAを編集する"),
        "ToolUATip":
            MessageLookupByLibrary.simpleMessage("変更を適用するにはアプリを再起動してください"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("ツール"),
        "UrlExample": MessageLookupByLibrary.simpleMessage("URL例："),
        "UrlRequestFormat": MessageLookupByLibrary.simpleMessage(
            "URLのリクエストの返り値はJSON形式である必要があり、上記URLのレスポンスと同じ構造である必要があります。"),
        "UseEmojiForFatigue":
            MessageLookupByLibrary.simpleMessage("疲労度の表示に絵文字を使用"),
        "VersionUpdateContent": MessageLookupByLibrary.simpleMessage(
            "ソフトウェアのバージョン更新が見つかりました。バージョン更新ドキュメントをご確認ください。"),
        "VersionUpdateLinkText":
            MessageLookupByLibrary.simpleMessage("ここをクリックして表示"),
        "VersionUpdateTitle": MessageLookupByLibrary.simpleMessage("バージョン更新"),
        "WeaponData": MessageLookupByLibrary.simpleMessage("装備データ"),
        "WebInfo": MessageLookupByLibrary.simpleMessage("Web情報"),
        "YamlExample": MessageLookupByLibrary.simpleMessage("YAML例：")
      };
}
