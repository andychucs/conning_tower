class KcRequireInfo {
  KcRequireInfo({
    required this.apiBasic,
    required this.apiSlotItem,
    required this.apiUnsetslot,
    required this.apiKdock,
    required this.apiUseitem,
    required this.apiFurniture,
    required this.apiExtraSupply,
    required this.apiOssSetting,
    required this.apiSkinId,
    required this.apiPositionId,
  });
  late final ApiBasic apiBasic;
  late final List<ApiSlotItem> apiSlotItem;
  late final ApiUnsetslot apiUnsetslot;
  late final List<ApiKdock> apiKdock;
  late final List<ApiUseitem> apiUseitem;
  late final List<ApiFurniture> apiFurniture;
  late final List<int> apiExtraSupply;
  late final ApiOssSetting apiOssSetting;
  late final int apiSkinId;
  late final int apiPositionId;

  KcRequireInfo.fromJson(Map<String, dynamic> json){
    apiBasic = ApiBasic.fromJson(json['api_basic']);
    apiSlotItem = List.from(json['api_slot_item']).map((e)=>ApiSlotItem.fromJson(e)).toList();
    apiUnsetslot = ApiUnsetslot.fromJson(json['api_unsetslot']);
    apiKdock = List.from(json['api_kdock']).map((e)=>ApiKdock.fromJson(e)).toList();
    apiUseitem = List.from(json['api_useitem']).map((e)=>ApiUseitem.fromJson(e)).toList();
    apiFurniture = List.from(json['api_furniture']).map((e)=>ApiFurniture.fromJson(e)).toList();
    apiExtraSupply = List.castFrom<dynamic, int>(json['api_extra_supply']);
    apiOssSetting = ApiOssSetting.fromJson(json['api_oss_setting']);
    apiSkinId = json['api_skin_id'];
    apiPositionId = json['api_position_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_basic'] = apiBasic.toJson();
    _data['api_slot_item'] = apiSlotItem.map((e)=>e.toJson()).toList();
    _data['api_unsetslot'] = apiUnsetslot.toJson();
    _data['api_kdock'] = apiKdock.map((e)=>e.toJson()).toList();
    _data['api_useitem'] = apiUseitem.map((e)=>e.toJson()).toList();
    _data['api_furniture'] = apiFurniture.map((e)=>e.toJson()).toList();
    _data['api_extra_supply'] = apiExtraSupply;
    _data['api_oss_setting'] = apiOssSetting.toJson();
    _data['api_skin_id'] = apiSkinId;
    _data['api_position_id'] = apiPositionId;
    return _data;
  }
}

class ApiBasic {
  ApiBasic({
    required this.apiMemberId,
    required this.apiFirstflag,
  });
  late final int apiMemberId;
  late final int apiFirstflag;

  ApiBasic.fromJson(Map<String, dynamic> json){
    apiMemberId = json['api_member_id'];
    apiFirstflag = json['api_firstflag'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_member_id'] = apiMemberId;
    _data['api_firstflag'] = apiFirstflag;
    return _data;
  }
}

class ApiSlotItem {
  ApiSlotItem({
    required this.apiId,
    required this.apiSlotitemId,
    required this.apiLocked,
    required this.apiLevel,
  });
  late final int apiId;
  late final int apiSlotitemId;
  late final int apiLocked;
  late final int apiLevel;

  ApiSlotItem.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiSlotitemId = json['api_slotitem_id'];
    apiLocked = json['api_locked'];
    apiLevel = json['api_level'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_slotitem_id'] = apiSlotitemId;
    _data['api_locked'] = apiLocked;
    _data['api_level'] = apiLevel;
    return _data;
  }
}

class ApiUnsetslot {
  ApiUnsetslot({
    required this.apiSlottype23,
  });
  late final List<int> apiSlottype23;

  ApiUnsetslot.fromJson(Map<String, dynamic> json){
    apiSlottype23 = List.castFrom<dynamic, int>(json['api_slottype23']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_slottype23'] = apiSlottype23;
    return _data;
  }
}

class ApiKdock {
  ApiKdock({
    required this.apiId,
    required this.apiState,
    required this.apiCreatedShipId,
    required this.apiCompleteTime,
    required this.apiCompleteTimeStr,
    required this.apiItem1,
    required this.apiItem2,
    required this.apiItem3,
    required this.apiItem4,
    required this.apiItem5,
  });
  late final int apiId;
  late final int apiState;
  late final int apiCreatedShipId;
  late final int apiCompleteTime;
  late final String apiCompleteTimeStr;
  late final int apiItem1;
  late final int apiItem2;
  late final int apiItem3;
  late final int apiItem4;
  late final int apiItem5;

  ApiKdock.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiState = json['api_state'];
    apiCreatedShipId = json['api_created_ship_id'];
    apiCompleteTime = json['api_complete_time'];
    apiCompleteTimeStr = json['api_complete_time_str'];
    apiItem1 = json['api_item1'];
    apiItem2 = json['api_item2'];
    apiItem3 = json['api_item3'];
    apiItem4 = json['api_item4'];
    apiItem5 = json['api_item5'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_state'] = apiState;
    _data['api_created_ship_id'] = apiCreatedShipId;
    _data['api_complete_time'] = apiCompleteTime;
    _data['api_complete_time_str'] = apiCompleteTimeStr;
    _data['api_item1'] = apiItem1;
    _data['api_item2'] = apiItem2;
    _data['api_item3'] = apiItem3;
    _data['api_item4'] = apiItem4;
    _data['api_item5'] = apiItem5;
    return _data;
  }
}

class ApiUseitem {
  ApiUseitem({
    required this.apiId,
    required this.apiCount,
  });
  late final int apiId;
  late final int apiCount;

  ApiUseitem.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiCount = json['api_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_count'] = apiCount;
    return _data;
  }
}

class ApiFurniture {
  ApiFurniture({
    required this.apiId,
    required this.apiFurnitureType,
    required this.apiFurnitureNo,
    required this.apiFurnitureId,
  });
  late final int apiId;
  late final int apiFurnitureType;
  late final int apiFurnitureNo;
  late final int apiFurnitureId;

  ApiFurniture.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiFurnitureType = json['api_furniture_type'];
    apiFurnitureNo = json['api_furniture_no'];
    apiFurnitureId = json['api_furniture_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_furniture_type'] = apiFurnitureType;
    _data['api_furniture_no'] = apiFurnitureNo;
    _data['api_furniture_id'] = apiFurnitureId;
    return _data;
  }
}

class ApiOssSetting {
  ApiOssSetting({
    required this.apiLanguageType,
    required this.apiOssItems,
  });
  late final int apiLanguageType;
  late final List<int> apiOssItems;

  ApiOssSetting.fromJson(Map<String, dynamic> json){
    apiLanguageType = json['api_language_type'];
    apiOssItems = List.castFrom<dynamic, int>(json['api_oss_items']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_language_type'] = apiLanguageType;
    _data['api_oss_items'] = apiOssItems;
    return _data;
  }
}