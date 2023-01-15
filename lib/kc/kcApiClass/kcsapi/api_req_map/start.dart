class KcMapStartClass {
  List<ApiCellData>? apiCellData;
  int? apiRashinFlg;
  int? apiRashinId;
  int? apiMapareaId;
  int? apiMapinfoNo;
  int? apiNo;
  int? apiColorNo;
  int? apiEventId;
  int? apiEventKind;
  int? apiNext;
  int? apiBosscellNo;
  int? apiBosscomp;
  ApiAirsearch? apiAirsearch;
  int? apiFromNo;

  KcMapStartClass(
      {this.apiCellData,
        this.apiRashinFlg,
        this.apiRashinId,
        this.apiMapareaId,
        this.apiMapinfoNo,
        this.apiNo,
        this.apiColorNo,
        this.apiEventId,
        this.apiEventKind,
        this.apiNext,
        this.apiBosscellNo,
        this.apiBosscomp,
        this.apiAirsearch,
        this.apiFromNo});

  KcMapStartClass.fromJson(Map<String, dynamic> json) {
    if (json['api_cell_data'] != null) {
      apiCellData = <ApiCellData>[];
      json['api_cell_data'].forEach((v) {
        apiCellData!.add(new ApiCellData.fromJson(v));
      });
    }
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
    apiAirsearch = json['api_airsearch'] != null
        ? new ApiAirsearch.fromJson(json['api_airsearch'])
        : null;
    apiFromNo = json['api_from_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.apiCellData != null) {
      data['api_cell_data'] = this.apiCellData!.map((v) => v.toJson()).toList();
    }
    data['api_rashin_flg'] = this.apiRashinFlg;
    data['api_rashin_id'] = this.apiRashinId;
    data['api_maparea_id'] = this.apiMapareaId;
    data['api_mapinfo_no'] = this.apiMapinfoNo;
    data['api_no'] = this.apiNo;
    data['api_color_no'] = this.apiColorNo;
    data['api_event_id'] = this.apiEventId;
    data['api_event_kind'] = this.apiEventKind;
    data['api_next'] = this.apiNext;
    data['api_bosscell_no'] = this.apiBosscellNo;
    data['api_bosscomp'] = this.apiBosscomp;
    if (this.apiAirsearch != null) {
      data['api_airsearch'] = this.apiAirsearch!.toJson();
    }
    data['api_from_no'] = this.apiFromNo;
    return data;
  }
}

class ApiCellData {
  int? apiId;
  int? apiNo;
  int? apiColorNo;
  int? apiPassed;

  ApiCellData({this.apiId, this.apiNo, this.apiColorNo, this.apiPassed});

  ApiCellData.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiNo = json['api_no'];
    apiColorNo = json['api_color_no'];
    apiPassed = json['api_passed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_no'] = this.apiNo;
    data['api_color_no'] = this.apiColorNo;
    data['api_passed'] = this.apiPassed;
    return data;
  }
}

class ApiAirsearch {
  int? apiPlaneType;
  int? apiResult;

  ApiAirsearch({this.apiPlaneType, this.apiResult});

  ApiAirsearch.fromJson(Map<String, dynamic> json) {
    apiPlaneType = json['api_plane_type'];
    apiResult = json['api_result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_plane_type'] = this.apiPlaneType;
    data['api_result'] = this.apiResult;
    return data;
  }
}
