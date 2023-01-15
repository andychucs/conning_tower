class KcMapInfo {
  KcMapInfo({
    required this.apiMapInfo,
    required this.apiAirBaseExpandedInfo,
  });
  late final List<ApiMapInfo> apiMapInfo;
  late final List<ApiAirBaseExpandedInfo> apiAirBaseExpandedInfo;

  KcMapInfo.fromJson(Map<String, dynamic> json){
    apiMapInfo = List.from(json['api_map_info']).map((e)=>ApiMapInfo.fromJson(e)).toList();
    apiAirBaseExpandedInfo = List.from(json['api_air_base_expanded_info']).map((e)=>ApiAirBaseExpandedInfo.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_map_info'] = apiMapInfo.map((e)=>e.toJson()).toList();
    _data['api_air_base_expanded_info'] = apiAirBaseExpandedInfo.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class ApiMapInfo {
  ApiMapInfo({
    required this.apiId,
    required this.apiCleared,
  });
  late final int apiId;
  late final int apiCleared;

  ApiMapInfo.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiCleared = json['api_cleared'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_cleared'] = apiCleared;
    return _data;
  }
}

class ApiAirBaseExpandedInfo {
  ApiAirBaseExpandedInfo({
    required this.apiAreaId,
    required this.apiMaintenanceLevel,
  });
  late final int apiAreaId;
  late final int apiMaintenanceLevel;

  ApiAirBaseExpandedInfo.fromJson(Map<String, dynamic> json){
    apiAreaId = json['api_area_id'];
    apiMaintenanceLevel = json['api_maintenance_level'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_area_id'] = apiAreaId;
    _data['api_maintenance_level'] = apiMaintenanceLevel;
    return _data;
  }
}