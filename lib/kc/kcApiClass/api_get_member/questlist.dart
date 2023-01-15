class KcQuestList {
  int? apiCount;
  int? apiCompletedKind;
  List<ApiList>? apiList;
  int? apiExecCount;
  int? apiExecType;

  KcQuestList(
      {this.apiCount,
        this.apiCompletedKind,
        this.apiList,
        this.apiExecCount,
        this.apiExecType});

  KcQuestList.fromJson(Map<String, dynamic> json) {
    apiCount = json['api_count'];
    apiCompletedKind = json['api_completed_kind'];
    if (json['api_list'] != null) {
      apiList = <ApiList>[];
      json['api_list'].forEach((v) {
        apiList!.add(new ApiList.fromJson(v));
      });
    }
    apiExecCount = json['api_exec_count'];
    apiExecType = json['api_exec_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_count'] = this.apiCount;
    data['api_completed_kind'] = this.apiCompletedKind;
    if (this.apiList != null) {
      data['api_list'] = this.apiList!.map((v) => v.toJson()).toList();
    }
    data['api_exec_count'] = this.apiExecCount;
    data['api_exec_type'] = this.apiExecType;
    return data;
  }
}

class ApiList {
  int? apiNo;
  int? apiCategory;
  int? apiType;
  int? apiLabelType;
  int? apiState;
  String? apiTitle;
  String? apiDetail;
  int? apiVoiceId;
  List<int>? apiGetMaterial;
  int? apiBonusFlag;
  int? apiProgressFlag;
  int? apiInvalidFlag;

  ApiList(
      {this.apiNo,
        this.apiCategory,
        this.apiType,
        this.apiLabelType,
        this.apiState,
        this.apiTitle,
        this.apiDetail,
        this.apiVoiceId,
        this.apiGetMaterial,
        this.apiBonusFlag,
        this.apiProgressFlag,
        this.apiInvalidFlag});

  ApiList.fromJson(Map<String, dynamic> json) {
    apiNo = json['api_no'];
    apiCategory = json['api_category'];
    apiType = json['api_type'];
    apiLabelType = json['api_label_type'];
    apiState = json['api_state'];
    apiTitle = json['api_title'];
    apiDetail = json['api_detail'];
    apiVoiceId = json['api_voice_id'];
    apiGetMaterial = json['api_get_material'].cast<int>();
    apiBonusFlag = json['api_bonus_flag'];
    apiProgressFlag = json['api_progress_flag'];
    apiInvalidFlag = json['api_invalid_flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_no'] = this.apiNo;
    data['api_category'] = this.apiCategory;
    data['api_type'] = this.apiType;
    data['api_label_type'] = this.apiLabelType;
    data['api_state'] = this.apiState;
    data['api_title'] = this.apiTitle;
    data['api_detail'] = this.apiDetail;
    data['api_voice_id'] = this.apiVoiceId;
    data['api_get_material'] = this.apiGetMaterial;
    data['api_bonus_flag'] = this.apiBonusFlag;
    data['api_progress_flag'] = this.apiProgressFlag;
    data['api_invalid_flag'] = this.apiInvalidFlag;
    return data;
  }
}
