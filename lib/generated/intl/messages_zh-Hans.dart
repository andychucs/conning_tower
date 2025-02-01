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

  static String m1(data) => "上次选择: ${data}";

  static String m2(count) => "舰娘数: ${count}";

  static String m3(type, count) => "${type}种装备共${count}件";

  static String m4(name) => "${name}加入了舰队";

  static String m5(url) => "正在访问${url}";

  static String m6(url) => "页面加载完毕：${url}";

  static String m7(url) => "页面开始加载：${url}";

  static String m8(taskTitle) => "${taskTitle} 已完成。";

  static String m9(length) => "${length}个资源日志将被导入";

  static String m10(statusCode) => "网络错误，状态码：${statusCode}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AboutButton": MessageLookupByLibrary.simpleMessage("关于"),
        "AboutContributors": MessageLookupByLibrary.simpleMessage("贡献者"),
        "AboutDescriptionOpen": MessageLookupByLibrary.simpleMessage(
            "舰桥是一款跨平台舰队Collection「艦隊これくしょん-艦これ-」专用浏览器。"),
        "AboutDescriptionStore": MessageLookupByLibrary.simpleMessage(
            "舰桥是一款可定制屏幕并保持电脑模式横向画面使用的网页游戏专用浏览器。"),
        "AboutVersion": MessageLookupByLibrary.simpleMessage("版本"),
        "ActiveMainWebPage": MessageLookupByLibrary.simpleMessage("当前使用的主要网页"),
        "AddDataSource": MessageLookupByLibrary.simpleMessage("添加数据源"),
        "AdvancedGameSupport": MessageLookupByLibrary.simpleMessage("高级游戏支持"),
        "AdvancedGameSupportDescription": MessageLookupByLibrary.simpleMessage(
            "本团队未运营任何游戏，该功能基于公开数据和第三方库、web运行环境实现，不能保证准确性。如果你有想要我们支持的游戏及功能，欢迎联系技术支持。"),
        "AlertNotShowAgain": MessageLookupByLibrary.simpleMessage("不再显示"),
        "AppBack": MessageLookupByLibrary.simpleMessage("返回"),
        "AppBottomSafe": MessageLookupByLibrary.simpleMessage("底部上移"),
        "AppClearCache": MessageLookupByLibrary.simpleMessage("清除缓存"),
        "AppClearCookie": MessageLookupByLibrary.simpleMessage("清除Cookie"),
        "AppControlsClearCache": MessageLookupByLibrary.simpleMessage("缓存已删除"),
        "AppControlsHide": MessageLookupByLibrary.simpleMessage("隐藏侧边栏"),
        "AppControlsLoad": m0,
        "AppControlsLogoutFailed":
            MessageLookupByLibrary.simpleMessage("未发现Cookie，可能不需要退出登陆"),
        "AppControlsLogoutSuccess":
            MessageLookupByLibrary.simpleMessage("Cookie已清除，已退出网站登陆"),
        "AppControlsNotReady":
            MessageLookupByLibrary.simpleMessage("WebView还没有准备好"),
        "AppControlsReload": MessageLookupByLibrary.simpleMessage("刷新"),
        "AppControlsScrollDown": MessageLookupByLibrary.simpleMessage("向下滚动"),
        "AppControlsScrollUp": MessageLookupByLibrary.simpleMessage("向上滚动"),
        "AppControlsShow": MessageLookupByLibrary.simpleMessage("显示侧边栏"),
        "AppForward": MessageLookupByLibrary.simpleMessage("前进"),
        "AppHome": MessageLookupByLibrary.simpleMessage("主页"),
        "AppLayoutClean": MessageLookupByLibrary.simpleMessage("纯净布局"),
        "AppLayoutJoystickAndFAB":
            MessageLookupByLibrary.simpleMessage("摇杆与浮动按钮"),
        "AppLayoutMultiFunctionAndFAB":
            MessageLookupByLibrary.simpleMessage("多功能按钮与浮动按钮"),
        "AppLayoutMultiFunctionButton":
            MessageLookupByLibrary.simpleMessage("多功能按钮"),
        "AppLayoutOnlyFAB": MessageLookupByLibrary.simpleMessage("仅浮动按钮"),
        "AppLayoutOnlyJoystick": MessageLookupByLibrary.simpleMessage("仅摇杆"),
        "AppLayoutSetting": MessageLookupByLibrary.simpleMessage("布局设置"),
        "AppName": MessageLookupByLibrary.simpleMessage("舰桥"),
        "AppNotificationManagement":
            MessageLookupByLibrary.simpleMessage("通知管理"),
        "AppNotify": MessageLookupByLibrary.simpleMessage(
            "提督，欢迎来到舰桥，舰桥会在游戏界面加载完成后自动调整屏幕尺寸到合适大小，如果长时间看到DMM GAMES的顶栏存在，请在你指挥舰队前点击「工具-Web-HTTP跳转」。"),
        "AppRedirect": MessageLookupByLibrary.simpleMessage("HTTP跳转"),
        "AppRefresh": MessageLookupByLibrary.simpleMessage("刷新"),
        "AppResize": MessageLookupByLibrary.simpleMessage("调整尺寸至适合屏幕"),
        "AppScrollDown": MessageLookupByLibrary.simpleMessage("向下滚动"),
        "AppScrollUp": MessageLookupByLibrary.simpleMessage("向上滚动"),
        "AppStoreRating": MessageLookupByLibrary.simpleMessage("在应用商店评分"),
        "AssetsHtmlSearchBarGo": MessageLookupByLibrary.simpleMessage("前往"),
        "AssetsHtmlSearchBarText":
            MessageLookupByLibrary.simpleMessage("搜索或输入网站名称"),
        "ClearAllPendingNotifications":
            MessageLookupByLibrary.simpleMessage("清除所有等待中的通知"),
        "DarkTheme": MessageLookupByLibrary.simpleMessage("深色主题"),
        "DashboardSetting":
            MessageLookupByLibrary.simpleMessage("在主页显示 Dashboard"),
        "DataDownloadGuide": MessageLookupByLibrary.simpleMessage(
            "如需使用KanColle数据监听功能，为保证功能可用务必前往工具-高级游戏支持中下载数据并打开开关（如果没有打开），如遇异常请在设置中重置应用数据。"),
        "DataErrorNotice": MessageLookupByLibrary.simpleMessage(
            "解析数据时发生错误，数据功能将不可靠。请联系开发者。也可能是由于网络错误引起的，请尝试刷新。"),
        "DesktopMode": MessageLookupByLibrary.simpleMessage("桌面模式"),
        "DocsNewUrl": MessageLookupByLibrary.simpleMessage(
            "https://conntower.github.io/docs/zh_Hans/new"),
        "DownloadFleetData": MessageLookupByLibrary.simpleMessage("下载舰队数据"),
        "DownloadOperationData": MessageLookupByLibrary.simpleMessage("下载远征数据"),
        "EmptyFieldError": MessageLookupByLibrary.simpleMessage("输入框不能为空。"),
        "Error": MessageLookupByLibrary.simpleMessage("发生错误"),
        "FleetData": MessageLookupByLibrary.simpleMessage("舰队数据"),
        "FutureAutoAdjustWindowFail":
            MessageLookupByLibrary.simpleMessage("屏幕调整失败"),
        "FutureAutoAdjustWindowSuccess":
            MessageLookupByLibrary.simpleMessage("屏幕调整完毕"),
        "Game": MessageLookupByLibrary.simpleMessage("游戏"),
        "GameMute": MessageLookupByLibrary.simpleMessage("关闭"),
        "GameUnmute": MessageLookupByLibrary.simpleMessage("打开"),
        "InvalidJsonError": MessageLookupByLibrary.simpleMessage("无效的JSON格式。"),
        "InvalidUrlError": MessageLookupByLibrary.simpleMessage("无效的URL。"),
        "InvalidYamlError": MessageLookupByLibrary.simpleMessage("无效的YAML格式。"),
        "JsonExample": MessageLookupByLibrary.simpleMessage("JSON示例："),
        "KCAdmiralRank1": MessageLookupByLibrary.simpleMessage("元帅"),
        "KCAdmiralRank10": MessageLookupByLibrary.simpleMessage("新任少校"),
        "KCAdmiralRank2": MessageLookupByLibrary.simpleMessage("大将"),
        "KCAdmiralRank3": MessageLookupByLibrary.simpleMessage("中将"),
        "KCAdmiralRank4": MessageLookupByLibrary.simpleMessage("少将"),
        "KCAdmiralRank5": MessageLookupByLibrary.simpleMessage("上校"),
        "KCAdmiralRank6": MessageLookupByLibrary.simpleMessage("中校"),
        "KCAdmiralRank7": MessageLookupByLibrary.simpleMessage("新任中校"),
        "KCAdmiralRank8": MessageLookupByLibrary.simpleMessage("少校"),
        "KCAdmiralRank9": MessageLookupByLibrary.simpleMessage("资深少校"),
        "KCAirBattleDenial": MessageLookupByLibrary.simpleMessage("航空劣势"),
        "KCAirBattleIncapability":
            MessageLookupByLibrary.simpleMessage("制空权丧失"),
        "KCAirBattleParity": MessageLookupByLibrary.simpleMessage("航空均势"),
        "KCAirBattleSuperiority": MessageLookupByLibrary.simpleMessage("航空优势"),
        "KCAirBattleSupremacy": MessageLookupByLibrary.simpleMessage("制空权确保"),
        "KCAkashiStudio": MessageLookupByLibrary.simpleMessage("明石工坊"),
        "KCBattleAirbaseResourceLostLevel1":
            MessageLookupByLibrary.simpleMessage("储备资源受到了损害"),
        "KCBattleAirbaseResourceLostLevel2":
            MessageLookupByLibrary.simpleMessage("储备资源以及基地航空队受到了损害"),
        "KCBattleAirbaseResourceLostLevel3":
            MessageLookupByLibrary.simpleMessage("基地航空队受到了损害"),
        "KCBattleAirbaseResourceLostLevel4":
            MessageLookupByLibrary.simpleMessage("空袭没有给基地带来损害"),
        "KCBattleContactStatus1": MessageLookupByLibrary.simpleMessage("同航战"),
        "KCBattleContactStatus2": MessageLookupByLibrary.simpleMessage("反航战"),
        "KCBattleContactStatus3": MessageLookupByLibrary.simpleMessage("T字有利"),
        "KCBattleContactStatus4": MessageLookupByLibrary.simpleMessage("T字不利"),
        "KCBattleDebuffUnlock": MessageLookupByLibrary.simpleMessage("解谜已完成"),
        "KCBattleFinish": MessageLookupByLibrary.simpleMessage("战斗结束"),
        "KCBattleFormation1": MessageLookupByLibrary.simpleMessage("单纵阵"),
        "KCBattleFormation11": MessageLookupByLibrary.simpleMessage("第1警戒航行序列"),
        "KCBattleFormation12": MessageLookupByLibrary.simpleMessage("第2警戒航行序列"),
        "KCBattleFormation13": MessageLookupByLibrary.simpleMessage("第3警戒航行序列"),
        "KCBattleFormation14": MessageLookupByLibrary.simpleMessage("第4警戒航行序列"),
        "KCBattleFormation2": MessageLookupByLibrary.simpleMessage("复纵阵"),
        "KCBattleFormation3": MessageLookupByLibrary.simpleMessage("轮型阵"),
        "KCBattleFormation4": MessageLookupByLibrary.simpleMessage("梯形阵"),
        "KCBattleFormation5": MessageLookupByLibrary.simpleMessage("单横阵"),
        "KCBattleFormation6": MessageLookupByLibrary.simpleMessage("警戒阵"),
        "KCDashboardBattleAllMap": MessageLookupByLibrary.simpleMessage("全海域"),
        "KCDashboardBattleDescription": MessageLookupByLibrary.simpleMessage(
            "目前只有通常舰队对通常舰队的一般战斗数据中的航空战、反潜战、炮击战、雷击战可以解析。"),
        "KCDashboardBattleEnemy": MessageLookupByLibrary.simpleMessage("敌方舰队"),
        "KCDashboardBattleLastChosen": m1,
        "KCDashboardBattleMapStateCleared":
            MessageLookupByLibrary.simpleMessage("已攻略"),
        "KCDashboardBattleMoreInfo": MessageLookupByLibrary.simpleMessage("更多"),
        "KCDashboardBattleOur": MessageLookupByLibrary.simpleMessage("我方舰队"),
        "KCDashboardBattleRecord": MessageLookupByLibrary.simpleMessage("战绩"),
        "KCDashboardBattleReport": MessageLookupByLibrary.simpleMessage("战斗报告"),
        "KCDashboardCommand": MessageLookupByLibrary.simpleMessage("司令部"),
        "KCDashboardFleet": MessageLookupByLibrary.simpleMessage("舰队"),
        "KCDashboardFleetDescription": MessageLookupByLibrary.simpleMessage(
            "列表项目右侧圆环为状态指示，外环表示疲劳度，为浅黄色时表示疲劳度为49，圆心表示燃料和弹药状态，燃料和弹药全满时为绿色，任意一项不满时为橙色。项目可以点击查看详细数值。"),
        "KCDashboardOperation": MessageLookupByLibrary.simpleMessage("远征"),
        "KCDashboardQuest": MessageLookupByLibrary.simpleMessage("任务"),
        "KCDashboardQuestCompleted": MessageLookupByLibrary.simpleMessage("完成"),
        "KCDashboardQuestDone": MessageLookupByLibrary.simpleMessage("已完结"),
        "KCDashboardQuestInProgress":
            MessageLookupByLibrary.simpleMessage("执行中"),
        "KCDashboardQuestToDo": MessageLookupByLibrary.simpleMessage("待执行"),
        "KCDashboardShipAA": MessageLookupByLibrary.simpleMessage("对空"),
        "KCDashboardShipASW": MessageLookupByLibrary.simpleMessage("对潜"),
        "KCDashboardShipAircraftPower":
            MessageLookupByLibrary.simpleMessage("制空"),
        "KCDashboardShipAmmo": MessageLookupByLibrary.simpleMessage("弹药"),
        "KCDashboardShipArmor": MessageLookupByLibrary.simpleMessage("护甲"),
        "KCDashboardShipCondition": MessageLookupByLibrary.simpleMessage("疲劳度"),
        "KCDashboardShipEvasion": MessageLookupByLibrary.simpleMessage("闪避"),
        "KCDashboardShipFirepower": MessageLookupByLibrary.simpleMessage("火力"),
        "KCDashboardShipFuel": MessageLookupByLibrary.simpleMessage("燃料"),
        "KCDashboardShipHP": MessageLookupByLibrary.simpleMessage("耐久"),
        "KCDashboardShipLuck": MessageLookupByLibrary.simpleMessage("运值"),
        "KCDashboardShipPlaneCapacity":
            MessageLookupByLibrary.simpleMessage("搭载"),
        "KCDashboardShipRange": MessageLookupByLibrary.simpleMessage("射程"),
        "KCDashboardShipScout": MessageLookupByLibrary.simpleMessage("索敌"),
        "KCDashboardShipScoutScore":
            MessageLookupByLibrary.simpleMessage("索敌值"),
        "KCDashboardShipScoutScoreCoefficient":
            MessageLookupByLibrary.simpleMessage("分歧点系数"),
        "KCDashboardShipScoutScoreFormula33":
            MessageLookupByLibrary.simpleMessage("33式"),
        "KCDashboardShipSpeed": MessageLookupByLibrary.simpleMessage("速度"),
        "KCDashboardShipTorpedo": MessageLookupByLibrary.simpleMessage("雷装"),
        "KCDashboardShipTotalAttack":
            MessageLookupByLibrary.simpleMessage("火雷值"),
        "KCDashboardShipUpgradeLevel":
            MessageLookupByLibrary.simpleMessage("改造等级"),
        "KCDashboardShipViewerCount": m2,
        "KCDashboardShipViewerFilterShipClass":
            MessageLookupByLibrary.simpleMessage("舰级"),
        "KCDashboardShipViewerFilterShipSlot":
            MessageLookupByLibrary.simpleMessage("装备"),
        "KCDashboardShipViewerFilterShipSlotHaveExSlot":
            MessageLookupByLibrary.simpleMessage("补强增设已使用"),
        "KCDashboardShipViewerFilterShipSlotNoExSlot":
            MessageLookupByLibrary.simpleMessage("补强增设未使用"),
        "KCDashboardShipViewerFilterShipStatus":
            MessageLookupByLibrary.simpleMessage("状态"),
        "KCDashboardShipViewerFilterShipStatusCanUpgrade":
            MessageLookupByLibrary.simpleMessage("尚不可改造"),
        "KCDashboardShipViewerFilterShipStatusUpgraded":
            MessageLookupByLibrary.simpleMessage("已改造到最终形态"),
        "KCDashboardShipViewerFilterShipStatusWaitUpgrade":
            MessageLookupByLibrary.simpleMessage("等待改造"),
        "KCDashboardShipViewerFilterShipType":
            MessageLookupByLibrary.simpleMessage("舰种"),
        "KCDashboardShipViewerFilterSpeed":
            MessageLookupByLibrary.simpleMessage("速度"),
        "KCDashboardShipViewerSortAAAsc":
            MessageLookupByLibrary.simpleMessage("对空升序"),
        "KCDashboardShipViewerSortAADesc":
            MessageLookupByLibrary.simpleMessage("对空降序"),
        "KCDashboardShipViewerSortASWAsc":
            MessageLookupByLibrary.simpleMessage("对潜升序"),
        "KCDashboardShipViewerSortASWDesc":
            MessageLookupByLibrary.simpleMessage("对潜降序"),
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
            MessageLookupByLibrary.simpleMessage("等级升序"),
        "KCDashboardShipViewerSortLevelDesc":
            MessageLookupByLibrary.simpleMessage("等级降序"),
        "KCDashboardShipViewerSortLuckAsc":
            MessageLookupByLibrary.simpleMessage("运值升序"),
        "KCDashboardShipViewerSortLuckDesc":
            MessageLookupByLibrary.simpleMessage("运值降序"),
        "KCDashboardShipViewerSortUIDAsc":
            MessageLookupByLibrary.simpleMessage("从旧到新"),
        "KCDashboardShipViewerSortUIDDesc":
            MessageLookupByLibrary.simpleMessage("从新到旧"),
        "KCDashboardShipViewerTitle":
            MessageLookupByLibrary.simpleMessage("舰娘"),
        "KCEquipmentMainTypeFilterAAGun":
            MessageLookupByLibrary.simpleMessage("副炮 高射炮"),
        "KCEquipmentMainTypeFilterAmmo":
            MessageLookupByLibrary.simpleMessage("特殊弹药"),
        "KCEquipmentMainTypeFilterAntiSub":
            MessageLookupByLibrary.simpleMessage("反潜装备"),
        "KCEquipmentMainTypeFilterAttack":
            MessageLookupByLibrary.simpleMessage("舰载攻击机"),
        "KCEquipmentMainTypeFilterEngineAndArmor":
            MessageLookupByLibrary.simpleMessage("轮机 装甲"),
        "KCEquipmentMainTypeFilterFighter":
            MessageLookupByLibrary.simpleMessage("舰载战斗机"),
        "KCEquipmentMainTypeFilterGun":
            MessageLookupByLibrary.simpleMessage("主炮"),
        "KCEquipmentMainTypeFilterImprovementAndResource":
            MessageLookupByLibrary.simpleMessage("增益 物资"),
        "KCEquipmentMainTypeFilterLDAircraft":
            MessageLookupByLibrary.simpleMessage("陆基飞机"),
        "KCEquipmentMainTypeFilterRadar":
            MessageLookupByLibrary.simpleMessage("雷达"),
        "KCEquipmentMainTypeFilterReconAndSeaplane":
            MessageLookupByLibrary.simpleMessage("侦察机 水上飞机"),
        "KCEquipmentMainTypeFilterSearchlightAndDevice":
            MessageLookupByLibrary.simpleMessage("探照灯 设备"),
        "KCEquipmentMainTypeFilterTorpedo":
            MessageLookupByLibrary.simpleMessage("鱼雷"),
        "KCEquipmentMainTypeFilterVehicle":
            MessageLookupByLibrary.simpleMessage("载具"),
        "KCEquipmentViewerTotalNote": m3,
        "KCFleetCombined": MessageLookupByLibrary.simpleMessage("联合舰队"),
        "KCFleetCombinedCarrier":
            MessageLookupByLibrary.simpleMessage("航母机动部队"),
        "KCFleetCombinedSurface":
            MessageLookupByLibrary.simpleMessage("水上打击部队"),
        "KCFleetMono": MessageLookupByLibrary.simpleMessage("单舰队"),
        "KCGetNewShipNotify": m4,
        "KCGetNewShipNotifyTitle": MessageLookupByLibrary.simpleMessage("新舰娘"),
        "KCLowestCond": MessageLookupByLibrary.simpleMessage("疲劳度最差"),
        "KCNeedLoginNoticeDesc":
            MessageLookupByLibrary.simpleMessage("登录游戏后才能使用此功能"),
        "KCResourceAmmo": MessageLookupByLibrary.simpleMessage("弹药"),
        "KCResourceBauxite": MessageLookupByLibrary.simpleMessage("铝土"),
        "KCResourceDevelopmentMaterial":
            MessageLookupByLibrary.simpleMessage("开发资材"),
        "KCResourceFuel": MessageLookupByLibrary.simpleMessage("燃料"),
        "KCResourceImprovementMaterial":
            MessageLookupByLibrary.simpleMessage("改修资材"),
        "KCResourceInstantCreateShip":
            MessageLookupByLibrary.simpleMessage("高速建造"),
        "KCResourceInstantRepair": MessageLookupByLibrary.simpleMessage("高速修复"),
        "KCResourceSteel": MessageLookupByLibrary.simpleMessage("钢材"),
        "KCResources": MessageLookupByLibrary.simpleMessage("资源"),
        "KCShipDeregisterLabel": MessageLookupByLibrary.simpleMessage("除籍"),
        "KCShipGetLabel": MessageLookupByLibrary.simpleMessage("获得"),
        "KCShipNotRegisteredLabel": MessageLookupByLibrary.simpleMessage("未登记"),
        "KCShipRegisterList": MessageLookupByLibrary.simpleMessage("登记表"),
        "KCViewFuncMsgAlreadyGameRedirect":
            MessageLookupByLibrary.simpleMessage("已进入游戏页面，无需执行"),
        "KCViewFuncMsgAutoGameRedirect":
            MessageLookupByLibrary.simpleMessage("已进入游戏页面"),
        "KCViewFuncMsgGameNavi":
            MessageLookupByLibrary.simpleMessage("游戏主页加载中"),
        "KCViewFuncMsgGameNaviBlock":
            MessageLookupByLibrary.simpleMessage("游戏主页的重载已被拦截"),
        "KCViewFuncMsgNavi": m5,
        "KCViewFuncMsgNaviGameLoadCompleted":
            MessageLookupByLibrary.simpleMessage("游戏加载完毕"),
        "KCViewFuncMsgNaviGameLoadFailed":
            MessageLookupByLibrary.simpleMessage("游戏加载失败"),
        "KCViewFuncMsgNaviGameLoadNotCompleted":
            MessageLookupByLibrary.simpleMessage("游戏尚未加载完毕"),
        "KCViewFuncMsgPageFinished": m6,
        "KCViewFuncMsgPageFinishedIsGame":
            MessageLookupByLibrary.simpleMessage("当前页面为游戏原链接"),
        "KCViewFuncMsgPageStart": m7,
        "KanColleDataListener": MessageLookupByLibrary.simpleMessage("数据监听"),
        "KanColleLogbook": MessageLookupByLibrary.simpleMessage("航海日志"),
        "KancolleSpacingTopHide":
            MessageLookupByLibrary.simpleMessage("隐藏顶部白边"),
        "KancolleSpacingTopHideDesc":
            MessageLookupByLibrary.simpleMessage("如果游戏画面顶部有白边则开启此选项"),
        "KancolleUseHTTP": MessageLookupByLibrary.simpleMessage("在KC中强制使用HTTP"),
        "LightTheme": MessageLookupByLibrary.simpleMessage("浅色主题"),
        "MsgIOSNote": MessageLookupByLibrary.simpleMessage(
            "使用iOS 15.0或以上版本系统的提督请注意，当你看到DMM GAMES顶栏有显示并白屏时，请点击「工具-Web-HTTP跳转」。"),
        "MsgMuteGame": MessageLookupByLibrary.simpleMessage("刷新后游戏将静音"),
        "MsgUnmuteGame": MessageLookupByLibrary.simpleMessage("刷新后游戏声音将打开"),
        "OpenDashboard": MessageLookupByLibrary.simpleMessage("打开Dashboard"),
        "OperationData": MessageLookupByLibrary.simpleMessage("远征数据"),
        "PendingNotificationCount":
            MessageLookupByLibrary.simpleMessage("等待中的通知数量"),
        "PendingNotifications": MessageLookupByLibrary.simpleMessage("等待中的通知"),
        "PhotoAlbum": MessageLookupByLibrary.simpleMessage("相册"),
        "PhotoAlbumPermissionDescription":
            MessageLookupByLibrary.simpleMessage("如需在应用内显示照片请允许访问。"),
        "PhotoAlbumPermissionReminder":
            MessageLookupByLibrary.simpleMessage("如果照片无法显示，请在系统设置中打开读取权限。"),
        "PhotoAlbumPermissionRequest":
            MessageLookupByLibrary.simpleMessage("点此打开系统设置"),
        "ScreenshotFailDialogDesc":
            MessageLookupByLibrary.simpleMessage("请在系统设置中允许访问照片"),
        "ScreenshotFailDialogTitle":
            MessageLookupByLibrary.simpleMessage("截图保存失败"),
        "ScreenshotSuccessDialog":
            MessageLookupByLibrary.simpleMessage("截图已保存"),
        "SettingsButton": MessageLookupByLibrary.simpleMessage("设置"),
        "SettingsEnableAutoProcess":
            MessageLookupByLibrary.simpleMessage("启用自动全屏"),
        "SettingsHideFAB": MessageLookupByLibrary.simpleMessage("隐藏浮动按钮"),
        "SettingsHomeLoad":
            MessageLookupByLibrary.simpleMessage("启动时自动打开主页URL"),
        "SettingsHomeLoadShort": MessageLookupByLibrary.simpleMessage("自动加载"),
        "SettingsHomeSave":
            MessageLookupByLibrary.simpleMessage("将当前网页设置为主页URL"),
        "SettingsHomeSaveShort": MessageLookupByLibrary.simpleMessage("收藏"),
        "SettingsLandscape": MessageLookupByLibrary.simpleMessage("横屏"),
        "SettingsLandscapeLeft": MessageLookupByLibrary.simpleMessage("左横屏"),
        "SettingsLandscapeRight": MessageLookupByLibrary.simpleMessage("右横屏"),
        "SettingsLockDeviceOrientation":
            MessageLookupByLibrary.simpleMessage("锁定屏幕方向"),
        "SettingsLockDeviceOrientationTip":
            MessageLookupByLibrary.simpleMessage("不适用于iPad"),
        "SettingsPortrait": MessageLookupByLibrary.simpleMessage("竖屏"),
        "SettingsReset": MessageLookupByLibrary.simpleMessage("重置"),
        "SettingsScreenOrientation":
            MessageLookupByLibrary.simpleMessage("屏幕方向设置"),
        "SettingsShouldShowWebViewProgressBar":
            MessageLookupByLibrary.simpleMessage("显示进度条"),
        "ShipData": MessageLookupByLibrary.simpleMessage("舰船数据"),
        "ShortTextAll": MessageLookupByLibrary.simpleMessage("全"),
        "StatusCode": MessageLookupByLibrary.simpleMessage("状态码"),
        "SystemTheme": MessageLookupByLibrary.simpleMessage("跟随系统"),
        "TakeScreenshot": MessageLookupByLibrary.simpleMessage("截图"),
        "TaskCompleted": m8,
        "TaskDashboardTitle": MessageLookupByLibrary.simpleMessage("任务提醒"),
        "TaskNotAdded": MessageLookupByLibrary.simpleMessage("未添加任务"),
        "TaskNotificationAdded":
            MessageLookupByLibrary.simpleMessage("任务通知添加成功"),
        "TaskPageOperationTip":
            MessageLookupByLibrary.simpleMessage("如需添加以下任务的推送通知请点按该条目"),
        "TaskPageTitle": MessageLookupByLibrary.simpleMessage("任务提醒"),
        "TaskReminders": MessageLookupByLibrary.simpleMessage("任务提醒"),
        "TaskRemindersHelpContent": MessageLookupByLibrary.simpleMessage(
            "任务提醒功能允许您添加和管理任务提醒。\n\n- 要添加数据源，请点击右上角的“添加数据源”按钮，并输入有效的 URL 或 YAML/JSON 内容。\n\n- 若要保存更改，请点击“保存”按钮。\n\n- 已添加的任务将显示在列表中。\n\n- 双击任务即可添加该任务的提醒推送。\n\n- 点击进入任务信息页，您可以查看详细信息。\n\n- 在任务信息页中，点击右上角的向上箭头按钮可以将该任务在任务列表中置顶。\n\n- 如果您遇到任何问题，请联系我们的支持团队。\n\n祝您使用愉快！"),
        "TasksNumOverLimit": MessageLookupByLibrary.simpleMessage("导入任务数量超出限制"),
        "TextAirbase": MessageLookupByLibrary.simpleMessage("基地航空队"),
        "TextAll": MessageLookupByLibrary.simpleMessage("全部"),
        "TextBackToTop": MessageLookupByLibrary.simpleMessage("返回顶部"),
        "TextBattle": MessageLookupByLibrary.simpleMessage("战斗"),
        "TextBonus": MessageLookupByLibrary.simpleMessage("奖励"),
        "TextBuild": MessageLookupByLibrary.simpleMessage("建造"),
        "TextCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "TextCategory": MessageLookupByLibrary.simpleMessage("分类"),
        "TextCompact": MessageLookupByLibrary.simpleMessage("紧凑"),
        "TextConningTowerFormat":
            MessageLookupByLibrary.simpleMessage("ConningTower格式"),
        "TextCopyToClipboard": MessageLookupByLibrary.simpleMessage("复制"),
        "TextCopyToClipboardFailed":
            MessageLookupByLibrary.simpleMessage("复制失败"),
        "TextCopyToClipboardSuccess":
            MessageLookupByLibrary.simpleMessage("已复制到剪贴板"),
        "TextDeckBuilderFormat":
            MessageLookupByLibrary.simpleMessage("DeckBuilder格式"),
        "TextDestroy": MessageLookupByLibrary.simpleMessage("解体"),
        "TextDone": MessageLookupByLibrary.simpleMessage("完"),
        "TextDrop": MessageLookupByLibrary.simpleMessage("掉落"),
        "TextEquipment": MessageLookupByLibrary.simpleMessage("装备"),
        "TextFastPlusSpeed": MessageLookupByLibrary.simpleMessage("高速+"),
        "TextFastSpeed": MessageLookupByLibrary.simpleMessage("高速"),
        "TextFastestSpeed": MessageLookupByLibrary.simpleMessage("最速"),
        "TextFleetGirl": MessageLookupByLibrary.simpleMessage("舰娘"),
        "TextFleetMembers": MessageLookupByLibrary.simpleMessage("舰队成员"),
        "TextHelp": MessageLookupByLibrary.simpleMessage("帮助"),
        "TextId": MessageLookupByLibrary.simpleMessage("ID"),
        "TextImport": MessageLookupByLibrary.simpleMessage("导入"),
        "TextImportResourceFromPoi":
            MessageLookupByLibrary.simpleMessage("从poi的CSV文件导入资源日志"),
        "TextImportResourceNumberCheck": m9,
        "TextImportResourceWarning":
            MessageLookupByLibrary.simpleMessage("确定导入吗?"),
        "TextImporting": MessageLookupByLibrary.simpleMessage("导入中"),
        "TextImportingComplete": MessageLookupByLibrary.simpleMessage("导入完成"),
        "TextImportingFailed": MessageLookupByLibrary.simpleMessage("导入失败"),
        "TextItem": MessageLookupByLibrary.simpleMessage("道具"),
        "TextLDamage": MessageLookupByLibrary.simpleMessage("大破"),
        "TextLayout": MessageLookupByLibrary.simpleMessage("布局"),
        "TextLoginRequired": MessageLookupByLibrary.simpleMessage("需要登录"),
        "TextLongRange": MessageLookupByLibrary.simpleMessage("长"),
        "TextMDamage": MessageLookupByLibrary.simpleMessage("中破"),
        "TextMediumRange": MessageLookupByLibrary.simpleMessage("中"),
        "TextMovingAveragePeriod": MessageLookupByLibrary.simpleMessage("MA周期"),
        "TextNetworkError": m10,
        "TextNo": MessageLookupByLibrary.simpleMessage("否"),
        "TextNone": MessageLookupByLibrary.simpleMessage("无"),
        "TextNormal": MessageLookupByLibrary.simpleMessage("通常"),
        "TextOpenInJervis":
            MessageLookupByLibrary.simpleMessage("在Jervis作战室打开"),
        "TextOpenInNoro6": MessageLookupByLibrary.simpleMessage("在制空权模拟器打开"),
        "TextOther": MessageLookupByLibrary.simpleMessage("其他"),
        "TextRefit": MessageLookupByLibrary.simpleMessage("改修"),
        "TextResetZoom": MessageLookupByLibrary.simpleMessage("重置缩放"),
        "TextReturnPort": MessageLookupByLibrary.simpleMessage("归港"),
        "TextSDamage": MessageLookupByLibrary.simpleMessage("小破"),
        "TextSave": MessageLookupByLibrary.simpleMessage("保存"),
        "TextShare": MessageLookupByLibrary.simpleMessage("分享"),
        "TextShortRange": MessageLookupByLibrary.simpleMessage("短"),
        "TextShouldClose": MessageLookupByLibrary.simpleMessage("要关闭吗？"),
        "TextSlowSpeed": MessageLookupByLibrary.simpleMessage("低速"),
        "TextSort": MessageLookupByLibrary.simpleMessage("排序"),
        "TextStatus": MessageLookupByLibrary.simpleMessage("状态"),
        "TextSunken": MessageLookupByLibrary.simpleMessage("击沉"),
        "TextSuperLongRange": MessageLookupByLibrary.simpleMessage("超长"),
        "TextSuperLongRangePlus": MessageLookupByLibrary.simpleMessage("超长+"),
        "TextTag": MessageLookupByLibrary.simpleMessage("标签"),
        "TextTime": MessageLookupByLibrary.simpleMessage("时间"),
        "TextTitle": MessageLookupByLibrary.simpleMessage("标题"),
        "TextTotal": MessageLookupByLibrary.simpleMessage("总计"),
        "TextYes": MessageLookupByLibrary.simpleMessage("是"),
        "TextZoomIn": MessageLookupByLibrary.simpleMessage("放大"),
        "TextZoomOut": MessageLookupByLibrary.simpleMessage("缩小"),
        "Theme": MessageLookupByLibrary.simpleMessage("主题"),
        "ToolSaveHomeCancel": MessageLookupByLibrary.simpleMessage("主页URL已删除"),
        "ToolSaveHomeFail": MessageLookupByLibrary.simpleMessage("无效的URL"),
        "ToolSaveHomeSuccess": MessageLookupByLibrary.simpleMessage("主页URL已保存"),
        "ToolSearchBarURLSetting":
            MessageLookupByLibrary.simpleMessage("修改主页URL"),
        "ToolTitleGameScreen": MessageLookupByLibrary.simpleMessage("网页窗口"),
        "ToolTitleGameSound": MessageLookupByLibrary.simpleMessage("游戏声音"),
        "ToolTitleUtilities": MessageLookupByLibrary.simpleMessage("实用工具"),
        "ToolUASetting": MessageLookupByLibrary.simpleMessage("修改UA"),
        "ToolUATip": MessageLookupByLibrary.simpleMessage("设置后需重启应用"),
        "ToolsButton": MessageLookupByLibrary.simpleMessage("工具"),
        "UrlExample": MessageLookupByLibrary.simpleMessage("URL示例："),
        "UrlRequestFormat": MessageLookupByLibrary.simpleMessage(
            "填入URL请求的返回必须为JSON，且结构与上述URL中的响应一致。"),
        "UseEmojiForFatigue":
            MessageLookupByLibrary.simpleMessage("使用emoji显示疲劳度"),
        "VersionUpdateContent":
            MessageLookupByLibrary.simpleMessage("发现软件版本已更新，请查看版本更新文档。"),
        "VersionUpdateLinkText": MessageLookupByLibrary.simpleMessage("点击此处查看"),
        "VersionUpdateTitle": MessageLookupByLibrary.simpleMessage("版本更新"),
        "WeaponData": MessageLookupByLibrary.simpleMessage("装备数据"),
        "WikiDataLabel": MessageLookupByLibrary.simpleMessage("Wiki数据"),
        "YamlExample": MessageLookupByLibrary.simpleMessage("YAML示例：")
      };
}
