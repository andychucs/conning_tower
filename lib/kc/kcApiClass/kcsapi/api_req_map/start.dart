class KcMapStartClass {
  KcMapStartClass({
    required this.apiCellData,
    required this.apiRashinFlg,
    required this.apiRashinId,
    required this.apiMapareaId,
    required this.apiMapinfoNo,
    required this.apiNo,
    required this.apiColorNo,
    required this.apiEventId,
    required this.apiEventKind,
    required this.apiNext,
    required this.apiBosscellNo,
    required this.apiBosscomp,
    required this.apiAirsearch,
    required this.apiFromNo,
  });
  late final List<ApiCellData> apiCellData;
  late final int apiRashinFlg;
  late final int apiRashinId;
  late final int apiMapareaId;
  late final int apiMapinfoNo;
  late final int apiNo;
  late final int apiColorNo;
  late final int apiEventId;
  late final int apiEventKind;
  late final int apiNext;
  late final int apiBosscellNo;
  late final int apiBosscomp;
  late final ApiAirsearch apiAirsearch;
  late final int apiFromNo;

  KcMapStartClass.fromJson(Map<String, dynamic> json){
    apiCellData = List.from(json['api_cell_data']).map((e)=>ApiCellData.fromJson(e)).toList();
    apiRashinFlg = json['api_rashin_flg'];
    apiRashinId = json['api_rashin_id'];
    apiMapareaId = json['api_maparea_id'];
    apiMapinfoNo = json['api_mapinfo_no'];
    apiNo = json['api_no'];
    apiColorNo = json['api_color_no'];
    apiEventId = json['api_event_id'];
    apiEventKind = json['api_event_kind'];
    apiNext = json['api_next'];
    apiBosscellNo = json['api_bosscell_no'];
    apiBosscomp = json['api_bosscomp'];
    apiAirsearch = ApiAirsearch.fromJson(json['api_airsearch']);
    apiFromNo = json['api_from_no'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_cell_data'] = apiCellData.map((e)=>e.toJson()).toList();
    _data['api_rashin_flg'] = apiRashinFlg;
    _data['api_rashin_id'] = apiRashinId;
    _data['api_maparea_id'] = apiMapareaId;
    _data['api_mapinfo_no'] = apiMapinfoNo;
    _data['api_no'] = apiNo;
    _data['api_color_no'] = apiColorNo;
    _data['api_event_id'] = apiEventId;
    _data['api_event_kind'] = apiEventKind;
    _data['api_next'] = apiNext;
    _data['api_bosscell_no'] = apiBosscellNo;
    _data['api_bosscomp'] = apiBosscomp;
    _data['api_airsearch'] = apiAirsearch.toJson();
    _data['api_from_no'] = apiFromNo;
    return _data;
  }
}

class ApiCellData {
  ApiCellData({
    required this.apiId,
    required this.apiNo,
    required this.apiColorNo,
    required this.apiPassed,
  });
  late final int apiId;
  late final int apiNo;
  late final int apiColorNo;
  late final int apiPassed;

  ApiCellData.fromJson(Map<String, dynamic> json){
    apiId = json['api_id'];
    apiNo = json['api_no'];
    apiColorNo = json['api_color_no'];
    apiPassed = json['api_passed'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_id'] = apiId;
    _data['api_no'] = apiNo;
    _data['api_color_no'] = apiColorNo;
    _data['api_passed'] = apiPassed;
    return _data;
  }
}

class ApiAirsearch {
  ApiAirsearch({
    required this.apiPlaneType,
    required this.apiResult,
  });
  late final int apiPlaneType;
  late final int apiResult;

  ApiAirsearch.fromJson(Map<String, dynamic> json){
    apiPlaneType = json['api_plane_type'];
    apiResult = json['api_result'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_plane_type'] = apiPlaneType;
    _data['api_result'] = apiResult;
    return _data;
  }
}