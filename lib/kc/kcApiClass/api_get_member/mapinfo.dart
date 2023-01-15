class KcMapInfo {
  int? apiResult;
  String? apiResultMsg;
  ApiData? apiData;

  KcMapInfo({this.apiResult, this.apiResultMsg, this.apiData});

  KcMapInfo.fromJson(Map<String, dynamic> json) {
    apiResult = json['api_result'];
    apiResultMsg = json['api_result_msg'];
    apiData = json['api_data'] != null
        ? new ApiData.fromJson(json['api_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_result'] = this.apiResult;
    data['api_result_msg'] = this.apiResultMsg;
    if (this.apiData != null) {
      data['api_data'] = this.apiData!.toJson();
    }
    return data;
  }
}

class ApiData {
  List<ApiMapInfo>? apiMapInfo;
  List<ApiAirBase>? apiAirBase;
  List<ApiAirBaseExpandedInfo>? apiAirBaseExpandedInfo;

  ApiData({this.apiMapInfo, this.apiAirBase, this.apiAirBaseExpandedInfo});

  ApiData.fromJson(Map<String, dynamic> json) {
    if (json['api_map_info'] != null) {
      apiMapInfo = <ApiMapInfo>[];
      json['api_map_info'].forEach((v) {
        apiMapInfo!.add(new ApiMapInfo.fromJson(v));
      });
    }
    if (json['api_air_base'] != null) {
      apiAirBase = <ApiAirBase>[];
      json['api_air_base'].forEach((v) {
        apiAirBase!.add(new ApiAirBase.fromJson(v));
      });
    }
    if (json['api_air_base_expanded_info'] != null) {
      apiAirBaseExpandedInfo = <ApiAirBaseExpandedInfo>[];
      json['api_air_base_expanded_info'].forEach((v) {
        apiAirBaseExpandedInfo!.add(new ApiAirBaseExpandedInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.apiMapInfo != null) {
      data['api_map_info'] = this.apiMapInfo!.map((v) => v.toJson()).toList();
    }
    if (this.apiAirBase != null) {
      data['api_air_base'] = this.apiAirBase!.map((v) => v.toJson()).toList();
    }
    if (this.apiAirBaseExpandedInfo != null) {
      data['api_air_base_expanded_info'] =
          this.apiAirBaseExpandedInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ApiMapInfo {
  int? apiId;
  int? apiCleared;
  int? apiGaugeType;
  int? apiGaugeNum;
  int? apiDefeatCount;
  int? apiRequiredDefeatCount;
  int? apiAirBaseDecks;

  ApiMapInfo(
      {this.apiId,
        this.apiCleared,
        this.apiGaugeType,
        this.apiGaugeNum,
        this.apiDefeatCount,
        this.apiRequiredDefeatCount,
        this.apiAirBaseDecks});

  ApiMapInfo.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiCleared = json['api_cleared'];
    apiGaugeType = json['api_gauge_type'];
    apiGaugeNum = json['api_gauge_num'];
    apiDefeatCount = json['api_defeat_count'];
    apiRequiredDefeatCount = json['api_required_defeat_count'];
    apiAirBaseDecks = json['api_air_base_decks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_cleared'] = this.apiCleared;
    data['api_gauge_type'] = this.apiGaugeType;
    data['api_gauge_num'] = this.apiGaugeNum;
    data['api_defeat_count'] = this.apiDefeatCount;
    data['api_required_defeat_count'] = this.apiRequiredDefeatCount;
    data['api_air_base_decks'] = this.apiAirBaseDecks;
    return data;
  }
}

class ApiAirBase {
  int? apiAreaId;
  int? apiRid;
  String? apiName;
  ApiDistance? apiDistance;
  int? apiActionKind;
  List<ApiPlaneInfo>? apiPlaneInfo;

  ApiAirBase(
      {this.apiAreaId,
        this.apiRid,
        this.apiName,
        this.apiDistance,
        this.apiActionKind,
        this.apiPlaneInfo});

  ApiAirBase.fromJson(Map<String, dynamic> json) {
    apiAreaId = json['api_area_id'];
    apiRid = json['api_rid'];
    apiName = json['api_name'];
    apiDistance = json['api_distance'] != null
        ? new ApiDistance.fromJson(json['api_distance'])
        : null;
    apiActionKind = json['api_action_kind'];
    if (json['api_plane_info'] != null) {
      apiPlaneInfo = <ApiPlaneInfo>[];
      json['api_plane_info'].forEach((v) {
        apiPlaneInfo!.add(new ApiPlaneInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_area_id'] = this.apiAreaId;
    data['api_rid'] = this.apiRid;
    data['api_name'] = this.apiName;
    if (this.apiDistance != null) {
      data['api_distance'] = this.apiDistance!.toJson();
    }
    data['api_action_kind'] = this.apiActionKind;
    if (this.apiPlaneInfo != null) {
      data['api_plane_info'] =
          this.apiPlaneInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ApiDistance {
  int? apiBase;
  int? apiBonus;

  ApiDistance({this.apiBase, this.apiBonus});

  ApiDistance.fromJson(Map<String, dynamic> json) {
    apiBase = json['api_base'];
    apiBonus = json['api_bonus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_base'] = this.apiBase;
    data['api_bonus'] = this.apiBonus;
    return data;
  }
}

class ApiPlaneInfo {
  int? apiSquadronId;
  int? apiState;
  int? apiSlotid;
  int? apiCount;
  int? apiMaxCount;
  int? apiCond;

  ApiPlaneInfo(
      {this.apiSquadronId,
        this.apiState,
        this.apiSlotid,
        this.apiCount,
        this.apiMaxCount,
        this.apiCond});

  ApiPlaneInfo.fromJson(Map<String, dynamic> json) {
    apiSquadronId = json['api_squadron_id'];
    apiState = json['api_state'];
    apiSlotid = json['api_slotid'];
    apiCount = json['api_count'];
    apiMaxCount = json['api_max_count'];
    apiCond = json['api_cond'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_squadron_id'] = this.apiSquadronId;
    data['api_state'] = this.apiState;
    data['api_slotid'] = this.apiSlotid;
    data['api_count'] = this.apiCount;
    data['api_max_count'] = this.apiMaxCount;
    data['api_cond'] = this.apiCond;
    return data;
  }
}

class ApiAirBaseExpandedInfo {
  int? apiAreaId;
  int? apiMaintenanceLevel;

  ApiAirBaseExpandedInfo({this.apiAreaId, this.apiMaintenanceLevel});

  ApiAirBaseExpandedInfo.fromJson(Map<String, dynamic> json) {
    apiAreaId = json['api_area_id'];
    apiMaintenanceLevel = json['api_maintenance_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_area_id'] = this.apiAreaId;
    data['api_maintenance_level'] = this.apiMaintenanceLevel;
    return data;
  }
}
