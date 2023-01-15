class KcBattleResultClass {
  List<int>? apiShipId;
  String? apiWinRank;
  int? apiGetExp;
  int? apiMvp;
  int? apiMemberLv;
  int? apiMemberExp;
  int? apiGetBaseExp;
  List<int>? apiGetShipExp;
  List<dynamic>? apiGetExpLvup;
  int? apiDests;
  int? apiDestsf;
  String? apiQuestName;
  int? apiQuestLevel;
  ApiEnemyInfo? apiEnemyInfo;
  int? apiFirstClear;
  int? apiMapcellIncentive;
  List<int>? apiGetFlag;
  ApiGetShip? apiGetShip;
  int? apiGetEventflag;
  int? apiGetExmapRate;
  int? apiGetExmapUseitemId;
  int? apiEscapeFlag;
  dynamic apiEscape;

  KcBattleResultClass({
    this.apiShipId,
    this.apiWinRank,
    this.apiGetExp,
    this.apiMvp,
    this.apiMemberLv,
    this.apiMemberExp,
    this.apiGetBaseExp,
    this.apiGetShipExp,
    this.apiGetExpLvup,
    this.apiDests,
    this.apiDestsf,
    this.apiQuestName,
    this.apiQuestLevel,
    this.apiEnemyInfo,
    this.apiFirstClear,
    this.apiMapcellIncentive,
    this.apiGetFlag,
    this.apiGetShip,
    this.apiGetEventflag,
    this.apiGetExmapRate,
    this.apiGetExmapUseitemId,
    this.apiEscapeFlag,
    this.apiEscape,
  });

  KcBattleResultClass.fromJson(Map<String, dynamic> json) {
    apiShipId = (json['api_ship_id'] as List?)?.map((dynamic e) => e as int).toList();
    apiWinRank = json['api_win_rank'] as String?;
    apiGetExp = json['api_get_exp'] as int?;
    apiMvp = json['api_mvp'] as int?;
    apiMemberLv = json['api_member_lv'] as int?;
    apiMemberExp = json['api_member_exp'] as int?;
    apiGetBaseExp = json['api_get_base_exp'] as int?;
    apiGetShipExp = (json['api_get_ship_exp'] as List?)?.map((dynamic e) => e as int).toList();
    apiGetExpLvup = json['api_get_exp_lvup'] as List?;
    apiDests = json['api_dests'] as int?;
    apiDestsf = json['api_destsf'] as int?;
    apiQuestName = json['api_quest_name'] as String?;
    apiQuestLevel = json['api_quest_level'] as int?;
    apiEnemyInfo = (json['api_enemy_info'] as Map<String,dynamic>?) != null ? ApiEnemyInfo.fromJson(json['api_enemy_info'] as Map<String,dynamic>) : null;
    apiFirstClear = json['api_first_clear'] as int?;
    apiMapcellIncentive = json['api_mapcell_incentive'] as int?;
    apiGetFlag = (json['api_get_flag'] as List?)?.map((dynamic e) => e as int).toList();
    apiGetShip = (json['api_get_ship'] as Map<String,dynamic>?) != null ? ApiGetShip.fromJson(json['api_get_ship'] as Map<String,dynamic>) : null;
    apiGetEventflag = json['api_get_eventflag'] as int?;
    apiGetExmapRate = json['api_get_exmap_rate'] as int?;
    apiGetExmapUseitemId = json['api_get_exmap_useitem_id'] as int?;
    apiEscapeFlag = json['api_escape_flag'] as int?;
    apiEscape = json['api_escape'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_ship_id'] = apiShipId;
    json['api_win_rank'] = apiWinRank;
    json['api_get_exp'] = apiGetExp;
    json['api_mvp'] = apiMvp;
    json['api_member_lv'] = apiMemberLv;
    json['api_member_exp'] = apiMemberExp;
    json['api_get_base_exp'] = apiGetBaseExp;
    json['api_get_ship_exp'] = apiGetShipExp;
    json['api_get_exp_lvup'] = apiGetExpLvup;
    json['api_dests'] = apiDests;
    json['api_destsf'] = apiDestsf;
    json['api_quest_name'] = apiQuestName;
    json['api_quest_level'] = apiQuestLevel;
    json['api_enemy_info'] = apiEnemyInfo?.toJson();
    json['api_first_clear'] = apiFirstClear;
    json['api_mapcell_incentive'] = apiMapcellIncentive;
    json['api_get_flag'] = apiGetFlag;
    json['api_get_ship'] = apiGetShip?.toJson();
    json['api_get_eventflag'] = apiGetEventflag;
    json['api_get_exmap_rate'] = apiGetExmapRate;
    json['api_get_exmap_useitem_id'] = apiGetExmapUseitemId;
    json['api_escape_flag'] = apiEscapeFlag;
    json['api_escape'] = apiEscape;
    return json;
  }
}

class ApiEnemyInfo {
  String? apiLevel;
  String? apiRank;
  String? apiDeckName;

  ApiEnemyInfo({
    this.apiLevel,
    this.apiRank,
    this.apiDeckName,
  });

  ApiEnemyInfo.fromJson(Map<String, dynamic> json) {
    apiLevel = json['api_level'] as String?;
    apiRank = json['api_rank'] as String?;
    apiDeckName = json['api_deck_name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_level'] = apiLevel;
    json['api_rank'] = apiRank;
    json['api_deck_name'] = apiDeckName;
    return json;
  }
}

class ApiGetShip {
  int? apiShipId;
  String? apiShipType;
  String? apiShipName;
  String? apiShipGetmes;

  ApiGetShip({
    this.apiShipId,
    this.apiShipType,
    this.apiShipName,
    this.apiShipGetmes,
  });

  ApiGetShip.fromJson(Map<String, dynamic> json) {
    apiShipId = json['api_ship_id'] as int?;
    apiShipType = json['api_ship_type'] as String?;
    apiShipName = json['api_ship_name'] as String?;
    apiShipGetmes = json['api_ship_getmes'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_ship_id'] = apiShipId;
    json['api_ship_type'] = apiShipType;
    json['api_ship_name'] = apiShipName;
    json['api_ship_getmes'] = apiShipGetmes;
    return json;
  }
}