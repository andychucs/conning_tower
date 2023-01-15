class KcBattleClass {
  int? apiDeckId;
  List<int>? apiFormation;
  List<int>? apiFNowhps;
  List<int>? apiFMaxhps;
  List<dynamic>? apiFParam;
  List<int>? apiShipKe;
  List<int>? apiShipLv;
  List<int>? apiENowhps;
  List<int>? apiEMaxhps;
  List<dynamic>? apiESlot;
  List<dynamic>? apiEParam;
  int? apiMidnightFlag;
  List<int>? apiSearch;
  List<int>? apiStageFlag;
  ApiKouku? apiKouku;
  int? apiSupportFlag;
  dynamic apiSupportInfo;
  int? apiOpeningTaisenFlag;
  dynamic apiOpeningTaisen;
  int? apiOpeningFlag;
  dynamic apiOpeningAtack;
  List<int>? apiHouraiFlag;
  ApiHougeki1? apiHougeki1;
  dynamic apiHougeki2;
  dynamic apiHougeki3;
  ApiRaigeki? apiRaigeki;

  KcBattleClass({
    this.apiDeckId,
    this.apiFormation,
    this.apiFNowhps,
    this.apiFMaxhps,
    this.apiFParam,
    this.apiShipKe,
    this.apiShipLv,
    this.apiENowhps,
    this.apiEMaxhps,
    this.apiESlot,
    this.apiEParam,
    this.apiMidnightFlag,
    this.apiSearch,
    this.apiStageFlag,
    this.apiKouku,
    this.apiSupportFlag,
    this.apiSupportInfo,
    this.apiOpeningTaisenFlag,
    this.apiOpeningTaisen,
    this.apiOpeningFlag,
    this.apiOpeningAtack,
    this.apiHouraiFlag,
    this.apiHougeki1,
    this.apiHougeki2,
    this.apiHougeki3,
    this.apiRaigeki,
  });

  KcBattleClass.fromJson(Map<String, dynamic> json) {
    apiDeckId = json['api_deck_id'] as int?;
    apiFormation = (json['api_formation'] as List?)?.map((dynamic e) => e as int).toList();
    apiFNowhps = (json['api_f_nowhps'] as List?)?.map((dynamic e) => e as int).toList();
    apiFMaxhps = (json['api_f_maxhps'] as List?)?.map((dynamic e) => e as int).toList();
    apiFParam = json['api_fParam'] as List?;
    apiShipKe = (json['api_ship_ke'] as List?)?.map((dynamic e) => e as int).toList();
    apiShipLv = (json['api_ship_lv'] as List?)?.map((dynamic e) => e as int).toList();
    apiENowhps = (json['api_e_nowhps'] as List?)?.map((dynamic e) => e as int).toList();
    apiEMaxhps = (json['api_e_maxhps'] as List?)?.map((dynamic e) => e as int).toList();
    apiESlot = json['api_eSlot'] as List?;
    apiEParam = json['api_eParam'] as List?;
    apiMidnightFlag = json['api_midnight_flag'] as int?;
    apiSearch = (json['api_search'] as List?)?.map((dynamic e) => e as int).toList();
    apiStageFlag = (json['api_stage_flag'] as List?)?.map((dynamic e) => e as int).toList();
    apiKouku = (json['api_kouku'] as Map<String,dynamic>?) != null ? ApiKouku.fromJson(json['api_kouku'] as Map<String,dynamic>) : null;
    apiSupportFlag = json['api_support_flag'] as int?;
    apiSupportInfo = json['api_support_info'];
    apiOpeningTaisenFlag = json['api_opening_taisen_flag'] as int?;
    apiOpeningTaisen = json['api_opening_taisen'];
    apiOpeningFlag = json['api_opening_flag'] as int?;
    apiOpeningAtack = json['api_opening_atack'];
    apiHouraiFlag = (json['api_hourai_flag'] as List?)?.map((dynamic e) => e as int).toList();
    apiHougeki1 = (json['api_hougeki1'] as Map<String,dynamic>?) != null ? ApiHougeki1.fromJson(json['api_hougeki1'] as Map<String,dynamic>) : null;
    apiHougeki2 = json['api_hougeki2'];
    apiHougeki3 = json['api_hougeki3'];
    apiRaigeki = (json['api_raigeki'] as Map<String,dynamic>?) != null ? ApiRaigeki.fromJson(json['api_raigeki'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_deck_id'] = apiDeckId;
    json['api_formation'] = apiFormation;
    json['api_f_nowhps'] = apiFNowhps;
    json['api_f_maxhps'] = apiFMaxhps;
    json['api_fParam'] = apiFParam;
    json['api_ship_ke'] = apiShipKe;
    json['api_ship_lv'] = apiShipLv;
    json['api_e_nowhps'] = apiENowhps;
    json['api_e_maxhps'] = apiEMaxhps;
    json['api_eSlot'] = apiESlot;
    json['api_eParam'] = apiEParam;
    json['api_midnight_flag'] = apiMidnightFlag;
    json['api_search'] = apiSearch;
    json['api_stage_flag'] = apiStageFlag;
    json['api_kouku'] = apiKouku?.toJson();
    json['api_support_flag'] = apiSupportFlag;
    json['api_support_info'] = apiSupportInfo;
    json['api_opening_taisen_flag'] = apiOpeningTaisenFlag;
    json['api_opening_taisen'] = apiOpeningTaisen;
    json['api_opening_flag'] = apiOpeningFlag;
    json['api_opening_atack'] = apiOpeningAtack;
    json['api_hourai_flag'] = apiHouraiFlag;
    json['api_hougeki1'] = apiHougeki1?.toJson();
    json['api_hougeki2'] = apiHougeki2;
    json['api_hougeki3'] = apiHougeki3;
    json['api_raigeki'] = apiRaigeki?.toJson();
    return json;
  }
}

class ApiKouku {
  List<dynamic>? apiPlaneFrom;
  ApiStage1? apiStage1;
  dynamic apiStage2;
  dynamic apiStage3;

  ApiKouku({
    this.apiPlaneFrom,
    this.apiStage1,
    this.apiStage2,
    this.apiStage3,
  });

  ApiKouku.fromJson(Map<String, dynamic> json) {
    apiPlaneFrom = json['api_plane_from'] as List?;
    apiStage1 = (json['api_stage1'] as Map<String,dynamic>?) != null ? ApiStage1.fromJson(json['api_stage1'] as Map<String,dynamic>) : null;
    apiStage2 = json['api_stage2'];
    apiStage3 = json['api_stage3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_plane_from'] = apiPlaneFrom;
    json['api_stage1'] = apiStage1?.toJson();
    json['api_stage2'] = apiStage2;
    json['api_stage3'] = apiStage3;
    return json;
  }
}

class ApiStage1 {
  int? apiFCount;
  int? apiFLostcount;
  int? apiECount;
  int? apiELostcount;
  int? apiDispSeiku;
  List<int>? apiTouchPlane;

  ApiStage1({
    this.apiFCount,
    this.apiFLostcount,
    this.apiECount,
    this.apiELostcount,
    this.apiDispSeiku,
    this.apiTouchPlane,
  });

  ApiStage1.fromJson(Map<String, dynamic> json) {
    apiFCount = json['api_f_count'] as int?;
    apiFLostcount = json['api_f_lostcount'] as int?;
    apiECount = json['api_e_count'] as int?;
    apiELostcount = json['api_e_lostcount'] as int?;
    apiDispSeiku = json['api_disp_seiku'] as int?;
    apiTouchPlane = (json['api_touch_plane'] as List?)?.map((dynamic e) => e as int).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_f_count'] = apiFCount;
    json['api_f_lostcount'] = apiFLostcount;
    json['api_e_count'] = apiECount;
    json['api_e_lostcount'] = apiELostcount;
    json['api_disp_seiku'] = apiDispSeiku;
    json['api_touch_plane'] = apiTouchPlane;
    return json;
  }
}

class ApiHougeki1 {
  List<int>? apiAtEflag;
  List<int>? apiAtList;
  List<int>? apiAtType;
  List<dynamic>? apiDfList;
  List<dynamic>? apiSiList;
  List<dynamic>? apiClList;
  List<dynamic>? apiDamage;

  ApiHougeki1({
    this.apiAtEflag,
    this.apiAtList,
    this.apiAtType,
    this.apiDfList,
    this.apiSiList,
    this.apiClList,
    this.apiDamage,
  });

  ApiHougeki1.fromJson(Map<String, dynamic> json) {
    apiAtEflag = (json['api_at_eflag'] as List?)?.map((dynamic e) => e as int).toList();
    apiAtList = (json['api_at_list'] as List?)?.map((dynamic e) => e as int).toList();
    apiAtType = (json['api_at_type'] as List?)?.map((dynamic e) => e as int).toList();
    apiDfList = json['api_df_list'] as List?;
    apiSiList = json['api_si_list'] as List?;
    apiClList = json['api_cl_list'] as List?;
    apiDamage = json['api_damage'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_at_eflag'] = apiAtEflag;
    json['api_at_list'] = apiAtList;
    json['api_at_type'] = apiAtType;
    json['api_df_list'] = apiDfList;
    json['api_si_list'] = apiSiList;
    json['api_cl_list'] = apiClList;
    json['api_damage'] = apiDamage;
    return json;
  }
}

class ApiRaigeki {
  List<int>? apiFrai;
  List<int>? apiFcl;
  List<int>? apiFdam;
  List<int>? apiFydam;
  List<int>? apiErai;
  List<int>? apiEcl;
  List<int>? apiEdam;
  List<int>? apiEydam;

  ApiRaigeki({
    this.apiFrai,
    this.apiFcl,
    this.apiFdam,
    this.apiFydam,
    this.apiErai,
    this.apiEcl,
    this.apiEdam,
    this.apiEydam,
  });

  ApiRaigeki.fromJson(Map<String, dynamic> json) {
    apiFrai = (json['api_frai'] as List?)?.map((dynamic e) => e as int).toList();
    apiFcl = (json['api_fcl'] as List?)?.map((dynamic e) => e as int).toList();
    apiFdam = (json['api_fdam'] as List?)?.map((dynamic e) => e as int).toList();
    apiFydam = (json['api_fydam'] as List?)?.map((dynamic e) => e as int).toList();
    apiErai = (json['api_erai'] as List?)?.map((dynamic e) => e as int).toList();
    apiEcl = (json['api_ecl'] as List?)?.map((dynamic e) => e as int).toList();
    apiEdam = (json['api_edam'] as List?)?.map((dynamic e) => e as int).toList();
    apiEydam = (json['api_eydam'] as List?)?.map((dynamic e) => e as int).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['api_frai'] = apiFrai;
    json['api_fcl'] = apiFcl;
    json['api_fdam'] = apiFdam;
    json['api_fydam'] = apiFydam;
    json['api_erai'] = apiErai;
    json['api_ecl'] = apiEcl;
    json['api_edam'] = apiEdam;
    json['api_eydam'] = apiEydam;
    return json;
  }
}