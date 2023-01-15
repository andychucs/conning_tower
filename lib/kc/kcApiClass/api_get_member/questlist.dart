class KcQuestList {
  KcQuestList({
    required this.apiCount,
    required this.apiCompletedKind,
    required this.apiList,
    required this.apiExecCount,
    required this.apiExecType,
  });
  late final int apiCount;
  late final int apiCompletedKind;
  late final List<ApiList> apiList;
  late final int apiExecCount;
  late final int apiExecType;

  KcQuestList.fromJson(Map<String, dynamic> json){
    apiCount = json['api_count'];
    apiCompletedKind = json['api_completed_kind'];
    apiList = List.from(json['api_list']).map((e)=>ApiList.fromJson(e)).toList();
    apiExecCount = json['api_exec_count'];
    apiExecType = json['api_exec_type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_count'] = apiCount;
    _data['api_completed_kind'] = apiCompletedKind;
    _data['api_list'] = apiList.map((e)=>e.toJson()).toList();
    _data['api_exec_count'] = apiExecCount;
    _data['api_exec_type'] = apiExecType;
    return _data;
  }
}

class ApiList {
  ApiList({
    required this.apiNo,
    required this.apiCategory,
    required this.apiType,
    required this.apiLabelType,
    required this.apiState,
    required this.apiTitle,
    required this.apiDetail,
    required this.apiVoiceId,
    required this.apiGetMaterial,
    required this.apiBonusFlag,
    required this.apiProgressFlag,
    required this.apiInvalidFlag,
  });
  late final int apiNo;
  late final int apiCategory;
  late final int apiType;
  late final int apiLabelType;
  late final int apiState;
  late final String apiTitle;
  late final String apiDetail;
  late final int apiVoiceId;
  late final List<int> apiGetMaterial;
  late final int apiBonusFlag;
  late final int apiProgressFlag;
  late final int apiInvalidFlag;

  ApiList.fromJson(Map<String, dynamic> json){
    apiNo = json['api_no'];
    apiCategory = json['api_category'];
    apiType = json['api_type'];
    apiLabelType = json['api_label_type'];
    apiState = json['api_state'];
    apiTitle = json['api_title'];
    apiDetail = json['api_detail'];
    apiVoiceId = json['api_voice_id'];
    apiGetMaterial = List.castFrom<dynamic, int>(json['api_get_material']);
    apiBonusFlag = json['api_bonus_flag'];
    apiProgressFlag = json['api_progress_flag'];
    apiInvalidFlag = json['api_invalid_flag'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['api_no'] = apiNo;
    _data['api_category'] = apiCategory;
    _data['api_type'] = apiType;
    _data['api_label_type'] = apiLabelType;
    _data['api_state'] = apiState;
    _data['api_title'] = apiTitle;
    _data['api_detail'] = apiDetail;
    _data['api_voice_id'] = apiVoiceId;
    _data['api_get_material'] = apiGetMaterial;
    _data['api_bonus_flag'] = apiBonusFlag;
    _data['api_progress_flag'] = apiProgressFlag;
    _data['api_invalid_flag'] = apiInvalidFlag;
    return _data;
  }
}