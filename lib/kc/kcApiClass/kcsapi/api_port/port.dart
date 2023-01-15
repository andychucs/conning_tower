class KcPortClass {
  List<ApiMaterial>? apiMaterial;
  List<ApiDeckPort>? apiDeckPort;
  List<ApiNdock>? apiNdock;
  List<ApiShip>? apiShip;
  ApiBasic? apiBasic;
  List<ApiLog>? apiLog;
  int? apiPBgmId;
  int? apiParallelQuestCount;
  int? apiDestShipSlot;

  KcPortClass(
      {this.apiMaterial,
        this.apiDeckPort,
        this.apiNdock,
        this.apiShip,
        this.apiBasic,
        this.apiLog,
        this.apiPBgmId,
        this.apiParallelQuestCount,
        this.apiDestShipSlot});

  KcPortClass.fromJson(Map<String, dynamic> json) {
    if (json['api_material'] != null) {
      apiMaterial = <ApiMaterial>[];
      json['api_material'].forEach((v) {
        apiMaterial!.add(new ApiMaterial.fromJson(v));
      });
    }
    if (json['api_deck_port'] != null) {
      apiDeckPort = <ApiDeckPort>[];
      json['api_deck_port'].forEach((v) {
        apiDeckPort!.add(new ApiDeckPort.fromJson(v));
      });
    }
    if (json['api_ndock'] != null) {
      apiNdock = <ApiNdock>[];
      json['api_ndock'].forEach((v) {
        apiNdock!.add(new ApiNdock.fromJson(v));
      });
    }
    if (json['api_ship'] != null) {
      apiShip = <ApiShip>[];
      json['api_ship'].forEach((v) {
        apiShip!.add(new ApiShip.fromJson(v));
      });
    }
    apiBasic = json['api_basic'] != null
        ? new ApiBasic.fromJson(json['api_basic'])
        : null;
    if (json['api_log'] != null) {
      apiLog = <ApiLog>[];
      json['api_log'].forEach((v) {
        apiLog!.add(new ApiLog.fromJson(v));
      });
    }
    apiPBgmId = json['api_p_bgm_id'];
    apiParallelQuestCount = json['api_parallel_quest_count'];
    apiDestShipSlot = json['api_dest_ship_slot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.apiMaterial != null) {
      data['api_material'] = this.apiMaterial!.map((v) => v.toJson()).toList();
    }
    if (this.apiDeckPort != null) {
      data['api_deck_port'] = this.apiDeckPort!.map((v) => v.toJson()).toList();
    }
    if (this.apiNdock != null) {
      data['api_ndock'] = this.apiNdock!.map((v) => v.toJson()).toList();
    }
    if (this.apiShip != null) {
      data['api_ship'] = this.apiShip!.map((v) => v.toJson()).toList();
    }
    if (this.apiBasic != null) {
      data['api_basic'] = this.apiBasic!.toJson();
    }
    if (this.apiLog != null) {
      data['api_log'] = this.apiLog!.map((v) => v.toJson()).toList();
    }
    data['api_p_bgm_id'] = this.apiPBgmId;
    data['api_parallel_quest_count'] = this.apiParallelQuestCount;
    data['api_dest_ship_slot'] = this.apiDestShipSlot;
    return data;
  }
}

class ApiMaterial {
  int? apiMemberId;
  int? apiId;
  int? apiValue;

  ApiMaterial({this.apiMemberId, this.apiId, this.apiValue});

  ApiMaterial.fromJson(Map<String, dynamic> json) {
    apiMemberId = json['api_member_id'];
    apiId = json['api_id'];
    apiValue = json['api_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_member_id'] = this.apiMemberId;
    data['api_id'] = this.apiId;
    data['api_value'] = this.apiValue;
    return data;
  }
}

class ApiDeckPort {
  int? apiMemberId;
  int? apiId;
  String? apiName;
  String? apiNameId;
  List<int>? apiMission;
  String? apiFlagship;
  List<int>? apiShip;

  ApiDeckPort(
      {this.apiMemberId,
        this.apiId,
        this.apiName,
        this.apiNameId,
        this.apiMission,
        this.apiFlagship,
        this.apiShip});

  ApiDeckPort.fromJson(Map<String, dynamic> json) {
    apiMemberId = json['api_member_id'];
    apiId = json['api_id'];
    apiName = json['api_name'];
    apiNameId = json['api_name_id'];
    apiMission = json['api_mission'].cast<int>();
    apiFlagship = json['api_flagship'];
    apiShip = json['api_ship'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_member_id'] = this.apiMemberId;
    data['api_id'] = this.apiId;
    data['api_name'] = this.apiName;
    data['api_name_id'] = this.apiNameId;
    data['api_mission'] = this.apiMission;
    data['api_flagship'] = this.apiFlagship;
    data['api_ship'] = this.apiShip;
    return data;
  }
}

class ApiNdock {
  int? apiMemberId;
  int? apiId;
  int? apiState;
  int? apiShipId;
  int? apiCompleteTime;
  String? apiCompleteTimeStr;
  int? apiItem1;
  int? apiItem2;
  int? apiItem3;
  int? apiItem4;

  ApiNdock(
      {this.apiMemberId,
        this.apiId,
        this.apiState,
        this.apiShipId,
        this.apiCompleteTime,
        this.apiCompleteTimeStr,
        this.apiItem1,
        this.apiItem2,
        this.apiItem3,
        this.apiItem4});

  ApiNdock.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_member_id'] = this.apiMemberId;
    data['api_id'] = this.apiId;
    data['api_state'] = this.apiState;
    data['api_ship_id'] = this.apiShipId;
    data['api_complete_time'] = this.apiCompleteTime;
    data['api_complete_time_str'] = this.apiCompleteTimeStr;
    data['api_item1'] = this.apiItem1;
    data['api_item2'] = this.apiItem2;
    data['api_item3'] = this.apiItem3;
    data['api_item4'] = this.apiItem4;
    return data;
  }
}

class ApiShip {
  int? apiId;
  int? apiSortno;
  int? apiShipId;
  int? apiLv;
  List<int>? apiExp;
  int? apiNowhp;
  int? apiMaxhp;
  int? apiSoku;
  int? apiLeng;
  List<int>? apiSlot;
  List<int>? apiOnslot;
  int? apiSlotEx;
  List<int>? apiKyouka;
  int? apiBacks;
  int? apiFuel;
  int? apiBull;
  int? apiSlotnum;
  int? apiNdockTime;
  List<int>? apiNdockItem;
  int? apiSrate;
  int? apiCond;
  List<int>? apiKaryoku;
  List<int>? apiRaisou;
  List<int>? apiTaiku;
  List<int>? apiSoukou;
  List<int>? apiKaihi;
  List<int>? apiTaisen;
  List<int>? apiSakuteki;
  List<int>? apiLucky;
  int? apiLocked;
  int? apiLockedEquip;

  ApiShip(
      {this.apiId,
        this.apiSortno,
        this.apiShipId,
        this.apiLv,
        this.apiExp,
        this.apiNowhp,
        this.apiMaxhp,
        this.apiSoku,
        this.apiLeng,
        this.apiSlot,
        this.apiOnslot,
        this.apiSlotEx,
        this.apiKyouka,
        this.apiBacks,
        this.apiFuel,
        this.apiBull,
        this.apiSlotnum,
        this.apiNdockTime,
        this.apiNdockItem,
        this.apiSrate,
        this.apiCond,
        this.apiKaryoku,
        this.apiRaisou,
        this.apiTaiku,
        this.apiSoukou,
        this.apiKaihi,
        this.apiTaisen,
        this.apiSakuteki,
        this.apiLucky,
        this.apiLocked,
        this.apiLockedEquip});

  ApiShip.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiSortno = json['api_sortno'];
    apiShipId = json['api_ship_id'];
    apiLv = json['api_lv'];
    apiExp = json['api_exp'].cast<int>();
    apiNowhp = json['api_nowhp'];
    apiMaxhp = json['api_maxhp'];
    apiSoku = json['api_soku'];
    apiLeng = json['api_leng'];
    apiSlot = json['api_slot'].cast<int>();
    apiOnslot = json['api_onslot'].cast<int>();
    apiSlotEx = json['api_slot_ex'];
    apiKyouka = json['api_kyouka'].cast<int>();
    apiBacks = json['api_backs'];
    apiFuel = json['api_fuel'];
    apiBull = json['api_bull'];
    apiSlotnum = json['api_slotnum'];
    apiNdockTime = json['api_ndock_time'];
    apiNdockItem = json['api_ndock_item'].cast<int>();
    apiSrate = json['api_srate'];
    apiCond = json['api_cond'];
    apiKaryoku = json['api_karyoku'].cast<int>();
    apiRaisou = json['api_raisou'].cast<int>();
    apiTaiku = json['api_taiku'].cast<int>();
    apiSoukou = json['api_soukou'].cast<int>();
    apiKaihi = json['api_kaihi'].cast<int>();
    apiTaisen = json['api_taisen'].cast<int>();
    apiSakuteki = json['api_sakuteki'].cast<int>();
    apiLucky = json['api_lucky'].cast<int>();
    apiLocked = json['api_locked'];
    apiLockedEquip = json['api_locked_equip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_sortno'] = this.apiSortno;
    data['api_ship_id'] = this.apiShipId;
    data['api_lv'] = this.apiLv;
    data['api_exp'] = this.apiExp;
    data['api_nowhp'] = this.apiNowhp;
    data['api_maxhp'] = this.apiMaxhp;
    data['api_soku'] = this.apiSoku;
    data['api_leng'] = this.apiLeng;
    data['api_slot'] = this.apiSlot;
    data['api_onslot'] = this.apiOnslot;
    data['api_slot_ex'] = this.apiSlotEx;
    data['api_kyouka'] = this.apiKyouka;
    data['api_backs'] = this.apiBacks;
    data['api_fuel'] = this.apiFuel;
    data['api_bull'] = this.apiBull;
    data['api_slotnum'] = this.apiSlotnum;
    data['api_ndock_time'] = this.apiNdockTime;
    data['api_ndock_item'] = this.apiNdockItem;
    data['api_srate'] = this.apiSrate;
    data['api_cond'] = this.apiCond;
    data['api_karyoku'] = this.apiKaryoku;
    data['api_raisou'] = this.apiRaisou;
    data['api_taiku'] = this.apiTaiku;
    data['api_soukou'] = this.apiSoukou;
    data['api_kaihi'] = this.apiKaihi;
    data['api_taisen'] = this.apiTaisen;
    data['api_sakuteki'] = this.apiSakuteki;
    data['api_lucky'] = this.apiLucky;
    data['api_locked'] = this.apiLocked;
    data['api_locked_equip'] = this.apiLockedEquip;
    return data;
  }
}

class ApiBasic {
  String? apiMemberId;
  String? apiNickname;
  String? apiNicknameId;
  int? apiActiveFlag;
  int? apiStarttime;
  int? apiLevel;
  int? apiRank;
  int? apiExperience;
  Null? apiFleetname;
  String? apiComment;
  String? apiCommentId;
  int? apiMaxChara;
  int? apiMaxSlotitem;
  int? apiMaxKagu;
  int? apiPlaytime;
  int? apiTutorial;
  List<int>? apiFurniture;
  int? apiCountDeck;
  int? apiCountKdock;
  int? apiCountNdock;
  int? apiFcoin;
  int? apiStWin;
  int? apiStLose;
  int? apiMsCount;
  int? apiMsSuccess;
  int? apiPtWin;
  int? apiPtLose;
  int? apiPtChallenged;
  int? apiPtChallengedWin;
  int? apiFirstflag;
  int? apiTutorialProgress;
  List<int>? apiPvp;
  int? apiMedals;
  int? apiLargeDock;

  ApiBasic(
      {this.apiMemberId,
        this.apiNickname,
        this.apiNicknameId,
        this.apiActiveFlag,
        this.apiStarttime,
        this.apiLevel,
        this.apiRank,
        this.apiExperience,
        this.apiFleetname,
        this.apiComment,
        this.apiCommentId,
        this.apiMaxChara,
        this.apiMaxSlotitem,
        this.apiMaxKagu,
        this.apiPlaytime,
        this.apiTutorial,
        this.apiFurniture,
        this.apiCountDeck,
        this.apiCountKdock,
        this.apiCountNdock,
        this.apiFcoin,
        this.apiStWin,
        this.apiStLose,
        this.apiMsCount,
        this.apiMsSuccess,
        this.apiPtWin,
        this.apiPtLose,
        this.apiPtChallenged,
        this.apiPtChallengedWin,
        this.apiFirstflag,
        this.apiTutorialProgress,
        this.apiPvp,
        this.apiMedals,
        this.apiLargeDock});

  ApiBasic.fromJson(Map<String, dynamic> json) {
    apiMemberId = json['api_member_id'];
    apiNickname = json['api_nickname'];
    apiNicknameId = json['api_nickname_id'];
    apiActiveFlag = json['api_active_flag'];
    apiStarttime = json['api_starttime'];
    apiLevel = json['api_level'];
    apiRank = json['api_rank'];
    apiExperience = json['api_experience'];
    apiFleetname = json['api_fleetname'];
    apiComment = json['api_comment'];
    apiCommentId = json['api_comment_id'];
    apiMaxChara = json['api_max_chara'];
    apiMaxSlotitem = json['api_max_slotitem'];
    apiMaxKagu = json['api_max_kagu'];
    apiPlaytime = json['api_playtime'];
    apiTutorial = json['api_tutorial'];
    apiFurniture = json['api_furniture'].cast<int>();
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
    apiPvp = json['api_pvp'].cast<int>();
    apiMedals = json['api_medals'];
    apiLargeDock = json['api_large_dock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_member_id'] = this.apiMemberId;
    data['api_nickname'] = this.apiNickname;
    data['api_nickname_id'] = this.apiNicknameId;
    data['api_active_flag'] = this.apiActiveFlag;
    data['api_starttime'] = this.apiStarttime;
    data['api_level'] = this.apiLevel;
    data['api_rank'] = this.apiRank;
    data['api_experience'] = this.apiExperience;
    data['api_fleetname'] = this.apiFleetname;
    data['api_comment'] = this.apiComment;
    data['api_comment_id'] = this.apiCommentId;
    data['api_max_chara'] = this.apiMaxChara;
    data['api_max_slotitem'] = this.apiMaxSlotitem;
    data['api_max_kagu'] = this.apiMaxKagu;
    data['api_playtime'] = this.apiPlaytime;
    data['api_tutorial'] = this.apiTutorial;
    data['api_furniture'] = this.apiFurniture;
    data['api_count_deck'] = this.apiCountDeck;
    data['api_count_kdock'] = this.apiCountKdock;
    data['api_count_ndock'] = this.apiCountNdock;
    data['api_fcoin'] = this.apiFcoin;
    data['api_st_win'] = this.apiStWin;
    data['api_st_lose'] = this.apiStLose;
    data['api_ms_count'] = this.apiMsCount;
    data['api_ms_success'] = this.apiMsSuccess;
    data['api_pt_win'] = this.apiPtWin;
    data['api_pt_lose'] = this.apiPtLose;
    data['api_pt_challenged'] = this.apiPtChallenged;
    data['api_pt_challenged_win'] = this.apiPtChallengedWin;
    data['api_firstflag'] = this.apiFirstflag;
    data['api_tutorial_progress'] = this.apiTutorialProgress;
    data['api_pvp'] = this.apiPvp;
    data['api_medals'] = this.apiMedals;
    data['api_large_dock'] = this.apiLargeDock;
    return data;
  }
}

class ApiLog {
  int? apiNo;
  String? apiType;
  String? apiState;
  String? apiMessage;

  ApiLog({this.apiNo, this.apiType, this.apiState, this.apiMessage});

  ApiLog.fromJson(Map<String, dynamic> json) {
    apiNo = json['api_no'];
    apiType = json['api_type'];
    apiState = json['api_state'];
    apiMessage = json['api_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_no'] = this.apiNo;
    data['api_type'] = this.apiType;
    data['api_state'] = this.apiState;
    data['api_message'] = this.apiMessage;
    return data;
  }
}
