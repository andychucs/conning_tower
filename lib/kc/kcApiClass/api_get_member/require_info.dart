class KcRequireInfo {
  ApiBasic? apiBasic;
  List<ApiSlotItem>? apiSlotItem;
  ApiUnsetslot? apiUnsetslot;
  List<ApiKdock>? apiKdock;
  List<ApiUseitem>? apiUseitem;
  List<ApiFurniture>? apiFurniture;
  List<int>? apiExtraSupply;
  ApiOssSetting? apiOssSetting;
  int? apiSkinId;
  int? apiPositionId;

  KcRequireInfo(
      {this.apiBasic,
        this.apiSlotItem,
        this.apiUnsetslot,
        this.apiKdock,
        this.apiUseitem,
        this.apiFurniture,
        this.apiExtraSupply,
        this.apiOssSetting,
        this.apiSkinId,
        this.apiPositionId});

  KcRequireInfo.fromJson(Map<String, dynamic> json) {
    apiBasic = json['api_basic'] != null
        ? new ApiBasic.fromJson(json['api_basic'])
        : null;
    if (json['api_slot_item'] != null) {
      apiSlotItem = <ApiSlotItem>[];
      json['api_slot_item'].forEach((v) {
        apiSlotItem!.add(new ApiSlotItem.fromJson(v));
      });
    }
    apiUnsetslot = json['api_unsetslot'] != null
        ? new ApiUnsetslot.fromJson(json['api_unsetslot'])
        : null;
    if (json['api_kdock'] != null) {
      apiKdock = <ApiKdock>[];
      json['api_kdock'].forEach((v) {
        apiKdock!.add(new ApiKdock.fromJson(v));
      });
    }
    if (json['api_useitem'] != null) {
      apiUseitem = <ApiUseitem>[];
      json['api_useitem'].forEach((v) {
        apiUseitem!.add(new ApiUseitem.fromJson(v));
      });
    }
    if (json['api_furniture'] != null) {
      apiFurniture = <ApiFurniture>[];
      json['api_furniture'].forEach((v) {
        apiFurniture!.add(new ApiFurniture.fromJson(v));
      });
    }
    apiExtraSupply = json['api_extra_supply'].cast<int>();
    apiOssSetting = json['api_oss_setting'] != null
        ? new ApiOssSetting.fromJson(json['api_oss_setting'])
        : null;
    apiSkinId = json['api_skin_id'];
    apiPositionId = json['api_position_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.apiBasic != null) {
      data['api_basic'] = this.apiBasic!.toJson();
    }
    if (this.apiSlotItem != null) {
      data['api_slot_item'] = this.apiSlotItem!.map((v) => v.toJson()).toList();
    }
    if (this.apiUnsetslot != null) {
      data['api_unsetslot'] = this.apiUnsetslot!.toJson();
    }
    if (this.apiKdock != null) {
      data['api_kdock'] = this.apiKdock!.map((v) => v.toJson()).toList();
    }
    if (this.apiUseitem != null) {
      data['api_useitem'] = this.apiUseitem!.map((v) => v.toJson()).toList();
    }
    if (this.apiFurniture != null) {
      data['api_furniture'] =
          this.apiFurniture!.map((v) => v.toJson()).toList();
    }
    data['api_extra_supply'] = this.apiExtraSupply;
    if (this.apiOssSetting != null) {
      data['api_oss_setting'] = this.apiOssSetting!.toJson();
    }
    data['api_skin_id'] = this.apiSkinId;
    data['api_position_id'] = this.apiPositionId;
    return data;
  }
}

class ApiBasic {
  int? apiMemberId;
  int? apiFirstflag;

  ApiBasic({this.apiMemberId, this.apiFirstflag});

  ApiBasic.fromJson(Map<String, dynamic> json) {
    apiMemberId = json['api_member_id'];
    apiFirstflag = json['api_firstflag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_member_id'] = this.apiMemberId;
    data['api_firstflag'] = this.apiFirstflag;
    return data;
  }
}

class ApiSlotItem {
  int? apiId;
  int? apiSlotitemId;
  int? apiLocked;
  int? apiLevel;

  ApiSlotItem({this.apiId, this.apiSlotitemId, this.apiLocked, this.apiLevel});

  ApiSlotItem.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiSlotitemId = json['api_slotitem_id'];
    apiLocked = json['api_locked'];
    apiLevel = json['api_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_slotitem_id'] = this.apiSlotitemId;
    data['api_locked'] = this.apiLocked;
    data['api_level'] = this.apiLevel;
    return data;
  }
}

class ApiUnsetslot {
  List<int>? apiSlottype23;

  ApiUnsetslot({this.apiSlottype23});

  ApiUnsetslot.fromJson(Map<String, dynamic> json) {
    apiSlottype23 = json['api_slottype23'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_slottype23'] = this.apiSlottype23;
    return data;
  }
}

class ApiKdock {
  int? apiId;
  int? apiState;
  int? apiCreatedShipId;
  int? apiCompleteTime;
  String? apiCompleteTimeStr;
  int? apiItem1;
  int? apiItem2;
  int? apiItem3;
  int? apiItem4;
  int? apiItem5;

  ApiKdock(
      {this.apiId,
        this.apiState,
        this.apiCreatedShipId,
        this.apiCompleteTime,
        this.apiCompleteTimeStr,
        this.apiItem1,
        this.apiItem2,
        this.apiItem3,
        this.apiItem4,
        this.apiItem5});

  ApiKdock.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_state'] = this.apiState;
    data['api_created_ship_id'] = this.apiCreatedShipId;
    data['api_complete_time'] = this.apiCompleteTime;
    data['api_complete_time_str'] = this.apiCompleteTimeStr;
    data['api_item1'] = this.apiItem1;
    data['api_item2'] = this.apiItem2;
    data['api_item3'] = this.apiItem3;
    data['api_item4'] = this.apiItem4;
    data['api_item5'] = this.apiItem5;
    return data;
  }
}

class ApiUseitem {
  int? apiId;
  int? apiCount;

  ApiUseitem({this.apiId, this.apiCount});

  ApiUseitem.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiCount = json['api_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_count'] = this.apiCount;
    return data;
  }
}

class ApiFurniture {
  int? apiId;
  int? apiFurnitureType;
  int? apiFurnitureNo;
  int? apiFurnitureId;

  ApiFurniture(
      {this.apiId,
        this.apiFurnitureType,
        this.apiFurnitureNo,
        this.apiFurnitureId});

  ApiFurniture.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiFurnitureType = json['api_furniture_type'];
    apiFurnitureNo = json['api_furniture_no'];
    apiFurnitureId = json['api_furniture_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_furniture_type'] = this.apiFurnitureType;
    data['api_furniture_no'] = this.apiFurnitureNo;
    data['api_furniture_id'] = this.apiFurnitureId;
    return data;
  }
}

class ApiOssSetting {
  int? apiLanguageType;
  List<int>? apiOssItems;

  ApiOssSetting({this.apiLanguageType, this.apiOssItems});

  ApiOssSetting.fromJson(Map<String, dynamic> json) {
    apiLanguageType = json['api_language_type'];
    apiOssItems = json['api_oss_items'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_language_type'] = this.apiLanguageType;
    data['api_oss_items'] = this.apiOssItems;
    return data;
  }
}
