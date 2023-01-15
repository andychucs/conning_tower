class KcPortClass {
  KcPortClass({
    required this.apiResult,
    required this.apiResultMsg,
    required this.apiData,
  });
  late final int apiResult;
  late final String apiResultMsg;
  late final ApiData apiData;

  KcPortClass.fromJson(Map<String, dynamic> json){
    apiResult = json['api_result'];
    apiResultMsg = json['api_result_msg'];
    apiData = ApiData.fromJson(json['api_data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_result'] = apiResult;
    _data['api_result_msg'] = apiResultMsg;
    _data['api_data'] = apiData.toJson();
    return _data;
  }
}

class ApiData {
  ApiData({
    required this.apiMaterial,
    required this.apiDeckPort,
    required this.apiNdock,
    required this.apiShip,
    required this.apiBasic,
    required this.apiLog,
    required this.apiPBgmId,
    required this.apiParallelQuestCount,
    required this.apiDestShipSlot,
  });
  late final List<ApiMaterial> apiMaterial;
  late final List<ApiDeckPort> apiDeckPort;
  late final List<ApiNdock> apiNdock;
  late final List<ApiShip> apiShip;
  late final ApiBasic apiBasic;
  late final List<ApiLog> apiLog;
  late final int apiPBgmId;
  late final int apiParallelQuestCount;
  late final int apiDestShipSlot;

  ApiData.fromJson(Map<String, dynamic> json){
    apiMaterial = List.from(json['api_material']).map((e)=>ApiMaterial.fromJson(e)).toList();
    apiDeckPort = List.from(json['api_deck_port']).map((e)=>ApiDeckPort.fromJson(e)).toList();
    apiNdock = List.from(json['api_ndock']).map((e)=>ApiNdock.fromJson(e)).toList();
    apiShip = List.from(json['api_ship']).map((e)=>ApiShip.fromJson(e)).toList();
    apiBasic = ApiBasic.fromJson(json['api_basic']);
    apiLog = List.from(json['api_log']).map((e)=>ApiLog.fromJson(e)).toList();
    apiPBgmId = json['api_p_bgm_id'];
    apiParallelQuestCount = json['api_parallel_quest_count'];
    apiDestShipSlot = json['api_dest_ship_slot'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_material'] = apiMaterial.map((e)=>e.toJson()).toList();
    _data['api_deck_port'] = apiDeckPort.map((e)=>e.toJson()).toList();
    _data['api_ndock'] = apiNdock.map((e)=>e.toJson()).toList();
    _data['api_ship'] = apiShip.map((e)=>e.toJson()).toList();
    _data['api_basic'] = apiBasic.toJson();
    _data['api_log'] = apiLog.map((e)=>e.toJson()).toList();
    _data['api_p_bgm_id'] = apiPBgmId;
    _data['api_parallel_quest_count'] = apiParallelQuestCount;
    _data['api_dest_ship_slot'] = apiDestShipSlot;
    return _data;
  }
}

class ApiMaterial {
  ApiMaterial({
    required this.apiMemberId,
    required this.apiId,
    required this.apiValue,
  });
  late final int apiMemberId;
  late final int apiId;
  late final int apiValue;

  ApiMaterial.fromJson(Map<String, dynamic> json){
    apiMemberId = json['api_member_id'];
    apiId = json['api_id'];
    apiValue = json['api_value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_member_id'] = apiMemberId;
    _data['api_id'] = apiId;
    _data['api_value'] = apiValue;
    return _data;
  }
}

class ApiDeckPort {
  ApiDeckPort({
    required this.apiMemberId,
    required this.apiId,
    required this.apiName,
    required this.apiNameId,
    required this.apiMission,
    required this.apiFlagship,
    required this.apiShip,
  });
  late final int apiMemberId;
  late final int apiId;
  late final String apiName;
  late final String apiNameId;
  late final List<int> apiMission;
  late final String apiFlagship;
  late final List<int> apiShip;

  ApiDeckPort.fromJson(Map<String, dynamic> json){
    apiMemberId = json['api_member_id'];
    apiId = json['api_id'];
    apiName = json['api_name'];
    apiNameId = json['api_name_id'];
    apiMission = List.castFrom<dynamic, int>(json['api_mission']);
    apiFlagship = json['api_flagship'];
    apiShip = List.castFrom<dynamic, int>(json['api_ship']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_member_id'] = apiMemberId;
    _data['api_id'] = apiId;
    _data['api_name'] = apiName;
    _data['api_name_id'] = apiNameId;
    _data['api_mission'] = apiMission;
    _data['api_flagship'] = apiFlagship;
    _data['api_ship'] = apiShip;
    return _data;
  }
}

class ApiNdock {
  ApiNdock({
    required this.apiMemberId,
    required this.apiId,
    required this.apiState,
    required this.apiShipId,
    required this.apiCompleteTime,
    required this.apiCompleteTimeStr,
    required this.apiItem1,
    required this.apiItem2,
    required this.apiItem3,
    required this.apiItem4,
  });
  late final int apiMemberId;
  late final int apiId;
  late final int apiState;
  late final int apiShipId;
  late final int apiCompleteTime;
  late final String apiCompleteTimeStr;
  late final int apiItem1;
  late final int apiItem2;
  late final int apiItem3;
  late final int apiItem4;

  ApiNdock.fromJson(Map<String, dynamic> json){
    apiMemberId = json['api_member_id'];
    apiId = json['api_id'];
    apiState = json['api_state'];
    apiShipId = json['api_ship_id'];
    apiCompleteTime = json['api_complete_time'];
    apiCompleteTimeStr = json['api_complete_time_str'];
    apiItem1 = json['api_item1'];
    apiItem2 = json['api_item2'];
    apiItem3 = json['api_item3'];
    apiItem4 = json['api_item4'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_member_id'] = apiMemberId;
    _data['api_id'] = apiId;
    _data['api_state'] = apiState;
    _data['api_ship_id'] = apiShipId;
    _data['api_complete_time'] = apiCompleteTime;
    _data['api_complete_time_str'] = apiCompleteTimeStr;
    _data['api_item1'] = apiItem1;
    _data['api_item2'] = apiItem2;
    _data['api_item3'] = apiItem3;
    _data['api_item4'] = apiItem4;
    return _data;
  }
}

class ApiShip {
  ApiShip({
    required this.apiId,
    required this.apiSortno,
    required this.apiShipId,
    required this.apiLv,
    required this.apiExp,
    required this.apiNowhp,
    required this.apiMaxhp,
    required this.apiSoku,
    required this.apiLeng,
    required this.apiSlot,
    required this.apiOnslot,
    required this.apiSlotEx,
    required this.apiKyouka,
    required this.apiBacks,
    required this.apiFuel,
    required this.apiBull,
    required this.apiSlotnum,
    required this.apiNdockTime,
    required this.apiNdockItem,
    required this.apiSrate,
    required this.apiCond,
    required this.apiKaryoku,
    required this.apiRaisou,
    required this.apiTaiku,
    required this.apiSoukou,
    required this.apiKaihi,
    required this.apiTaisen,
    required this.apiSakuteki,
    required this.apiLucky,
    required this.apiLocked,
    required this.apiLockedEquip,
  });
  late final int apiId;
  late final int apiSortno;
  late final int apiShipId;
  late final int apiLv;
  late final List<int> apiExp;
  late final int apiNowhp;
  late final int apiMaxhp;
  late final int apiSoku;
  late final int apiLeng;
  late final List<int> apiSlot;
  late final List<int> apiOnslot;
  late final int apiSlotEx;
  late final List<int> apiKyouka;
  late final int apiBacks;
  late final int apiFuel;
  late final int apiBull;
  late final int apiSlotnum;
  late final int apiNdockTime;
  late final List<int> apiNdockItem;
  late final int apiSrate;
  late final int apiCond;
  late final List<int> apiKaryoku;
  late final List<int> apiRaisou;
  late final List<int> apiTaiku;
  late final List<int> apiSoukou;
  late final List<int> apiKaihi;
  late final List<int> apiTaisen;
  late final List<int> apiSakuteki;
  late final List<int> apiLucky;
  late final int apiLocked;
  late final int apiLockedEquip;

  ApiShip.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiSortno = json['api_sortno'];
    apiShipId = json['api_ship_id'];
    apiLv = json['api_lv'];
    apiExp = List.castFrom<dynamic, int>(json['api_exp']);
    apiNowhp = json['api_nowhp'];
    apiMaxhp = json['api_maxhp'];
    apiSoku = json['api_soku'];
    apiLeng = json['api_leng'];
    apiSlot = List.castFrom<dynamic, int>(json['api_slot']);
    apiOnslot = List.castFrom<dynamic, int>(json['api_onslot']);
    apiSlotEx = json['api_slot_ex'];
    apiKyouka = List.castFrom<dynamic, int>(json['api_kyouka']);
    apiBacks = json['api_backs'];
    apiFuel = json['api_fuel'];
    apiBull = json['api_bull'];
    apiSlotnum = json['api_slotnum'];
    apiNdockTime = json['api_ndock_time'];
    apiNdockItem = List.castFrom<dynamic, int>(json['api_ndock_item']);
    apiSrate = json['api_srate'];
    apiCond = json['api_cond'];
    apiKaryoku = List.castFrom<dynamic, int>(json['api_karyoku']);
    apiRaisou = List.castFrom<dynamic, int>(json['api_raisou']);
    apiTaiku = List.castFrom<dynamic, int>(json['api_taiku']);
    apiSoukou = List.castFrom<dynamic, int>(json['api_soukou']);
    apiKaihi = List.castFrom<dynamic, int>(json['api_kaihi']);
    apiTaisen = List.castFrom<dynamic, int>(json['api_taisen']);
    apiSakuteki = List.castFrom<dynamic, int>(json['api_sakuteki']);
    apiLucky = List.castFrom<dynamic, int>(json['api_lucky']);
    apiLocked = json['api_locked'];
    apiLockedEquip = json['api_locked_equip'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_sortno'] = apiSortno;
    _data['api_ship_id'] = apiShipId;
    _data['api_lv'] = apiLv;
    _data['api_exp'] = apiExp;
    _data['api_nowhp'] = apiNowhp;
    _data['api_maxhp'] = apiMaxhp;
    _data['api_soku'] = apiSoku;
    _data['api_leng'] = apiLeng;
    _data['api_slot'] = apiSlot;
    _data['api_onslot'] = apiOnslot;
    _data['api_slot_ex'] = apiSlotEx;
    _data['api_kyouka'] = apiKyouka;
    _data['api_backs'] = apiBacks;
    _data['api_fuel'] = apiFuel;
    _data['api_bull'] = apiBull;
    _data['api_slotnum'] = apiSlotnum;
    _data['api_ndock_time'] = apiNdockTime;
    _data['api_ndock_item'] = apiNdockItem;
    _data['api_srate'] = apiSrate;
    _data['api_cond'] = apiCond;
    _data['api_karyoku'] = apiKaryoku;
    _data['api_raisou'] = apiRaisou;
    _data['api_taiku'] = apiTaiku;
    _data['api_soukou'] = apiSoukou;
    _data['api_kaihi'] = apiKaihi;
    _data['api_taisen'] = apiTaisen;
    _data['api_sakuteki'] = apiSakuteki;
    _data['api_lucky'] = apiLucky;
    _data['api_locked'] = apiLocked;
    _data['api_locked_equip'] = apiLockedEquip;
    return _data;
  }
}

class ApiBasic {
  ApiBasic({
    required this.apiMemberId,
    required this.apiNickname,
    required this.apiNicknameId,
    required this.apiActiveFlag,
    required this.apiStarttime,
    required this.apiLevel,
    required this.apiRank,
    required this.apiExperience,
    this.apiFleetname,
    required this.apiComment,
    required this.apiCommentId,
    required this.apiMaxChara,
    required this.apiMaxSlotitem,
    required this.apiMaxKagu,
    required this.apiPlaytime,
    required this.apiTutorial,
    required this.apiFurniture,
    required this.apiCountDeck,
    required this.apiCountKdock,
    required this.apiCountNdock,
    required this.apiFcoin,
    required this.apiStWin,
    required this.apiStLose,
    required this.apiMsCount,
    required this.apiMsSuccess,
    required this.apiPtWin,
    required this.apiPtLose,
    required this.apiPtChallenged,
    required this.apiPtChallengedWin,
    required this.apiFirstflag,
    required this.apiTutorialProgress,
    required this.apiPvp,
    required this.apiMedals,
    required this.apiLargeDock,
  });
  late final String apiMemberId;
  late final String apiNickname;
  late final String apiNicknameId;
  late final int apiActiveFlag;
  late final int apiStarttime;
  late final int apiLevel;
  late final int apiRank;
  late final int apiExperience;
  late final Null apiFleetname;
  late final String apiComment;
  late final String apiCommentId;
  late final int apiMaxChara;
  late final int apiMaxSlotitem;
  late final int apiMaxKagu;
  late final int apiPlaytime;
  late final int apiTutorial;
  late final List<int> apiFurniture;
  late final int apiCountDeck;
  late final int apiCountKdock;
  late final int apiCountNdock;
  late final int apiFcoin;
  late final int apiStWin;
  late final int apiStLose;
  late final int apiMsCount;
  late final int apiMsSuccess;
  late final int apiPtWin;
  late final int apiPtLose;
  late final int apiPtChallenged;
  late final int apiPtChallengedWin;
  late final int apiFirstflag;
  late final int apiTutorialProgress;
  late final List<int> apiPvp;
  late final int apiMedals;
  late final int apiLargeDock;

  ApiBasic.fromJson(Map<String, dynamic> json){
    apiMemberId = json['api_member_id'];
    apiNickname = json['api_nickname'];
    apiNicknameId = json['api_nickname_id'];
    apiActiveFlag = json['api_active_flag'];
    apiStarttime = json['api_starttime'];
    apiLevel = json['api_level'];
    apiRank = json['api_rank'];
    apiExperience = json['api_experience'];
    apiFleetname = null;
    apiComment = json['api_comment'];
    apiCommentId = json['api_comment_id'];
    apiMaxChara = json['api_max_chara'];
    apiMaxSlotitem = json['api_max_slotitem'];
    apiMaxKagu = json['api_max_kagu'];
    apiPlaytime = json['api_playtime'];
    apiTutorial = json['api_tutorial'];
    apiFurniture = List.castFrom<dynamic, int>(json['api_furniture']);
    apiCountDeck = json['api_count_deck'];
    apiCountKdock = json['api_count_kdock'];
    apiCountNdock = json['api_count_ndock'];
    apiFcoin = json['api_fcoin'];
    apiStWin = json['api_st_win'];
    apiStLose = json['api_st_lose'];
    apiMsCount = json['api_ms_count'];
    apiMsSuccess = json['api_ms_success'];
    apiPtWin = json['api_pt_win'];
    apiPtLose = json['api_pt_lose'];
    apiPtChallenged = json['api_pt_challenged'];
    apiPtChallengedWin = json['api_pt_challenged_win'];
    apiFirstflag = json['api_firstflag'];
    apiTutorialProgress = json['api_tutorial_progress'];
    apiPvp = List.castFrom<dynamic, int>(json['api_pvp']);
    apiMedals = json['api_medals'];
    apiLargeDock = json['api_large_dock'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_member_id'] = apiMemberId;
    _data['api_nickname'] = apiNickname;
    _data['api_nickname_id'] = apiNicknameId;
    _data['api_active_flag'] = apiActiveFlag;
    _data['api_starttime'] = apiStarttime;
    _data['api_level'] = apiLevel;
    _data['api_rank'] = apiRank;
    _data['api_experience'] = apiExperience;
    _data['api_fleetname'] = apiFleetname;
    _data['api_comment'] = apiComment;
    _data['api_comment_id'] = apiCommentId;
    _data['api_max_chara'] = apiMaxChara;
    _data['api_max_slotitem'] = apiMaxSlotitem;
    _data['api_max_kagu'] = apiMaxKagu;
    _data['api_playtime'] = apiPlaytime;
    _data['api_tutorial'] = apiTutorial;
    _data['api_furniture'] = apiFurniture;
    _data['api_count_deck'] = apiCountDeck;
    _data['api_count_kdock'] = apiCountKdock;
    _data['api_count_ndock'] = apiCountNdock;
    _data['api_fcoin'] = apiFcoin;
    _data['api_st_win'] = apiStWin;
    _data['api_st_lose'] = apiStLose;
    _data['api_ms_count'] = apiMsCount;
    _data['api_ms_success'] = apiMsSuccess;
    _data['api_pt_win'] = apiPtWin;
    _data['api_pt_lose'] = apiPtLose;
    _data['api_pt_challenged'] = apiPtChallenged;
    _data['api_pt_challenged_win'] = apiPtChallengedWin;
    _data['api_firstflag'] = apiFirstflag;
    _data['api_tutorial_progress'] = apiTutorialProgress;
    _data['api_pvp'] = apiPvp;
    _data['api_medals'] = apiMedals;
    _data['api_large_dock'] = apiLargeDock;
    return _data;
  }
}

class ApiLog {
  ApiLog({
    required this.apiNo,
    required this.apiType,
    required this.apiState,
    required this.apiMessage,
  });
  late final int apiNo;
  late final String apiType;
  late final String apiState;
  late final String apiMessage;

  ApiLog.fromJson(Map<String, dynamic> json){
    apiNo = json['api_no'];
    apiType = json['api_type'];
    apiState = json['api_state'];
    apiMessage = json['api_message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_no'] = apiNo;
    _data['api_type'] = apiType;
    _data['api_state'] = apiState;
    _data['api_message'] = apiMessage;
    return _data;
  }
}