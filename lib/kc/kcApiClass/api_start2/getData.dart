class KcGetData {
  int? apiResult;
  String? apiResultMsg;
  ApiData? apiData;

  KcGetData({this.apiResult, this.apiResultMsg, this.apiData});

  KcGetData.fromJson(Map<String, dynamic> json) {
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
  List<ApiMstShip>? apiMstShip;
  List<ApiMstSlotitemEquiptype>? apiMstSlotitemEquiptype;
  List<int>? apiMstEquipExslot;
  List<ApiMstEquipExslotShip>? apiMstEquipExslotShip;
  List<ApiMstStype>? apiMstStype;
  List<ApiMstSlotitem>? apiMstSlotitem;
  List<ApiMstFurnituregraph>? apiMstFurnituregraph;
  List<ApiMstUseitem>? apiMstUseitem;
  List<ApiMstPayitem>? apiMstPayitem;
  ApiMstItemShop? apiMstItemShop;
  List<ApiMstMaparea>? apiMstMaparea;
  List<ApiMstMapinfo>? apiMstMapinfo;
  List<ApiMstMapbgm>? apiMstMapbgm;
  List<ApiMstMission>? apiMstMission;
  ApiMstConst? apiMstConst;
  List<ApiMstShipupgrade>? apiMstShipupgrade;
  List<ApiMstBgm>? apiMstBgm;
  List<ApiMstEquipShip>? apiMstEquipShip;
  List<ApiMstFurniture>? apiMstFurniture;
  List<ApiMstShipgraph>? apiMstShipgraph;

  ApiData(
      {this.apiMstShip,
        this.apiMstSlotitemEquiptype,
        this.apiMstEquipExslot,
        this.apiMstEquipExslotShip,
        this.apiMstStype,
        this.apiMstSlotitem,
        this.apiMstFurnituregraph,
        this.apiMstUseitem,
        this.apiMstPayitem,
        this.apiMstItemShop,
        this.apiMstMaparea,
        this.apiMstMapinfo,
        this.apiMstMapbgm,
        this.apiMstMission,
        this.apiMstConst,
        this.apiMstShipupgrade,
        this.apiMstBgm,
        this.apiMstEquipShip,
        this.apiMstFurniture,
        this.apiMstShipgraph});

  ApiData.fromJson(Map<String, dynamic> json) {
    if (json['api_mst_ship'] != null) {
      apiMstShip = <ApiMstShip>[];
      json['api_mst_ship'].forEach((v) {
        apiMstShip!.add(new ApiMstShip.fromJson(v));
      });
    }
    if (json['api_mst_slotitem_equiptype'] != null) {
      apiMstSlotitemEquiptype = <ApiMstSlotitemEquiptype>[];
      json['api_mst_slotitem_equiptype'].forEach((v) {
        apiMstSlotitemEquiptype!.add(new ApiMstSlotitemEquiptype.fromJson(v));
      });
    }
    apiMstEquipExslot = json['api_mst_equip_exslot'].cast<int>();
    if (json['api_mst_equip_exslot_ship'] != null) {
      apiMstEquipExslotShip = <ApiMstEquipExslotShip>[];
      json['api_mst_equip_exslot_ship'].forEach((v) {
        apiMstEquipExslotShip!.add(new ApiMstEquipExslotShip.fromJson(v));
      });
    }
    if (json['api_mst_stype'] != null) {
      apiMstStype = <ApiMstStype>[];
      json['api_mst_stype'].forEach((v) {
        apiMstStype!.add(new ApiMstStype.fromJson(v));
      });
    }
    if (json['api_mst_slotitem'] != null) {
      apiMstSlotitem = <ApiMstSlotitem>[];
      json['api_mst_slotitem'].forEach((v) {
        apiMstSlotitem!.add(new ApiMstSlotitem.fromJson(v));
      });
    }
    if (json['api_mst_furnituregraph'] != null) {
      apiMstFurnituregraph = <ApiMstFurnituregraph>[];
      json['api_mst_furnituregraph'].forEach((v) {
        apiMstFurnituregraph!.add(new ApiMstFurnituregraph.fromJson(v));
      });
    }
    if (json['api_mst_useitem'] != null) {
      apiMstUseitem = <ApiMstUseitem>[];
      json['api_mst_useitem'].forEach((v) {
        apiMstUseitem!.add(new ApiMstUseitem.fromJson(v));
      });
    }
    if (json['api_mst_payitem'] != null) {
      apiMstPayitem = <ApiMstPayitem>[];
      json['api_mst_payitem'].forEach((v) {
        apiMstPayitem!.add(new ApiMstPayitem.fromJson(v));
      });
    }
    apiMstItemShop = json['api_mst_item_shop'] != null
        ? new ApiMstItemShop.fromJson(json['api_mst_item_shop'])
        : null;
    if (json['api_mst_maparea'] != null) {
      apiMstMaparea = <ApiMstMaparea>[];
      json['api_mst_maparea'].forEach((v) {
        apiMstMaparea!.add(new ApiMstMaparea.fromJson(v));
      });
    }
    if (json['api_mst_mapinfo'] != null) {
      apiMstMapinfo = <ApiMstMapinfo>[];
      json['api_mst_mapinfo'].forEach((v) {
        apiMstMapinfo!.add(new ApiMstMapinfo.fromJson(v));
      });
    }
    if (json['api_mst_mapbgm'] != null) {
      apiMstMapbgm = <ApiMstMapbgm>[];
      json['api_mst_mapbgm'].forEach((v) {
        apiMstMapbgm!.add(new ApiMstMapbgm.fromJson(v));
      });
    }
    if (json['api_mst_mission'] != null) {
      apiMstMission = <ApiMstMission>[];
      json['api_mst_mission'].forEach((v) {
        apiMstMission!.add(new ApiMstMission.fromJson(v));
      });
    }
    apiMstConst = json['api_mst_const'] != null
        ? new ApiMstConst.fromJson(json['api_mst_const'])
        : null;
    if (json['api_mst_shipupgrade'] != null) {
      apiMstShipupgrade = <ApiMstShipupgrade>[];
      json['api_mst_shipupgrade'].forEach((v) {
        apiMstShipupgrade!.add(new ApiMstShipupgrade.fromJson(v));
      });
    }
    if (json['api_mst_bgm'] != null) {
      apiMstBgm = <ApiMstBgm>[];
      json['api_mst_bgm'].forEach((v) {
        apiMstBgm!.add(new ApiMstBgm.fromJson(v));
      });
    }
    if (json['api_mst_equip_ship'] != null) {
      apiMstEquipShip = <ApiMstEquipShip>[];
      json['api_mst_equip_ship'].forEach((v) {
        apiMstEquipShip!.add(new ApiMstEquipShip.fromJson(v));
      });
    }
    if (json['api_mst_furniture'] != null) {
      apiMstFurniture = <ApiMstFurniture>[];
      json['api_mst_furniture'].forEach((v) {
        apiMstFurniture!.add(new ApiMstFurniture.fromJson(v));
      });
    }
    if (json['api_mst_shipgraph'] != null) {
      apiMstShipgraph = <ApiMstShipgraph>[];
      json['api_mst_shipgraph'].forEach((v) {
        apiMstShipgraph!.add(new ApiMstShipgraph.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.apiMstShip != null) {
      data['api_mst_ship'] = this.apiMstShip!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstSlotitemEquiptype != null) {
      data['api_mst_slotitem_equiptype'] =
          this.apiMstSlotitemEquiptype!.map((v) => v.toJson()).toList();
    }
    data['api_mst_equip_exslot'] = this.apiMstEquipExslot;
    if (this.apiMstEquipExslotShip != null) {
      data['api_mst_equip_exslot_ship'] =
          this.apiMstEquipExslotShip!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstStype != null) {
      data['api_mst_stype'] = this.apiMstStype!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstSlotitem != null) {
      data['api_mst_slotitem'] =
          this.apiMstSlotitem!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstFurnituregraph != null) {
      data['api_mst_furnituregraph'] =
          this.apiMstFurnituregraph!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstUseitem != null) {
      data['api_mst_useitem'] =
          this.apiMstUseitem!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstPayitem != null) {
      data['api_mst_payitem'] =
          this.apiMstPayitem!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstItemShop != null) {
      data['api_mst_item_shop'] = this.apiMstItemShop!.toJson();
    }
    if (this.apiMstMaparea != null) {
      data['api_mst_maparea'] =
          this.apiMstMaparea!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstMapinfo != null) {
      data['api_mst_mapinfo'] =
          this.apiMstMapinfo!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstMapbgm != null) {
      data['api_mst_mapbgm'] =
          this.apiMstMapbgm!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstMission != null) {
      data['api_mst_mission'] =
          this.apiMstMission!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstConst != null) {
      data['api_mst_const'] = this.apiMstConst!.toJson();
    }
    if (this.apiMstShipupgrade != null) {
      data['api_mst_shipupgrade'] =
          this.apiMstShipupgrade!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstBgm != null) {
      data['api_mst_bgm'] = this.apiMstBgm!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstEquipShip != null) {
      data['api_mst_equip_ship'] =
          this.apiMstEquipShip!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstFurniture != null) {
      data['api_mst_furniture'] =
          this.apiMstFurniture!.map((v) => v.toJson()).toList();
    }
    if (this.apiMstShipgraph != null) {
      data['api_mst_shipgraph'] =
          this.apiMstShipgraph!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ApiMstShip {
  int? apiId;
  int? apiSortno;
  int? apiSortId;
  String? apiName;
  String? apiYomi;
  int? apiStype;
  int? apiCtype;
  int? apiAfterlv;
  String? apiAftershipid;
  List<int>? apiTaik;
  List<int>? apiSouk;
  List<int>? apiHoug;
  List<int>? apiRaig;
  List<int>? apiTyku;
  List<int>? apiLuck;
  int? apiSoku;
  int? apiLeng;
  int? apiSlotNum;
  List<int>? apiMaxeq;
  int? apiBuildtime;
  List<int>? apiBroken;
  List<int>? apiPowup;
  int? apiBacks;
  String? apiGetmes;
  int? apiAfterfuel;
  int? apiAfterbull;
  int? apiFuelMax;
  int? apiBullMax;
  int? apiVoicef;
  List<int>? apiTais;

  ApiMstShip(
      {this.apiId,
        this.apiSortno,
        this.apiSortId,
        this.apiName,
        this.apiYomi,
        this.apiStype,
        this.apiCtype,
        this.apiAfterlv,
        this.apiAftershipid,
        this.apiTaik,
        this.apiSouk,
        this.apiHoug,
        this.apiRaig,
        this.apiTyku,
        this.apiLuck,
        this.apiSoku,
        this.apiLeng,
        this.apiSlotNum,
        this.apiMaxeq,
        this.apiBuildtime,
        this.apiBroken,
        this.apiPowup,
        this.apiBacks,
        this.apiGetmes,
        this.apiAfterfuel,
        this.apiAfterbull,
        this.apiFuelMax,
        this.apiBullMax,
        this.apiVoicef,
        this.apiTais});

  ApiMstShip.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiSortno = json['api_sortno'];
    apiSortId = json['api_sort_id'];
    apiName = json['api_name'];
    apiYomi = json['api_yomi'];
    apiStype = json['api_stype'];
    apiCtype = json['api_ctype'];
    apiAfterlv = json['api_afterlv'];
    apiAftershipid = json['api_aftershipid'];
    apiTaik = json['api_taik'].cast<int>();
    apiSouk = json['api_souk'].cast<int>();
    apiHoug = json['api_houg'].cast<int>();
    apiRaig = json['api_raig'].cast<int>();
    apiTyku = json['api_tyku'].cast<int>();
    apiLuck = json['api_luck'].cast<int>();
    apiSoku = json['api_soku'];
    apiLeng = json['api_leng'];
    apiSlotNum = json['api_slot_num'];
    apiMaxeq = json['api_maxeq'].cast<int>();
    apiBuildtime = json['api_buildtime'];
    apiBroken = json['api_broken'].cast<int>();
    apiPowup = json['api_powup'].cast<int>();
    apiBacks = json['api_backs'];
    apiGetmes = json['api_getmes'];
    apiAfterfuel = json['api_afterfuel'];
    apiAfterbull = json['api_afterbull'];
    apiFuelMax = json['api_fuel_max'];
    apiBullMax = json['api_bull_max'];
    apiVoicef = json['api_voicef'];
    apiTais = json['api_tais'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_sortno'] = this.apiSortno;
    data['api_sort_id'] = this.apiSortId;
    data['api_name'] = this.apiName;
    data['api_yomi'] = this.apiYomi;
    data['api_stype'] = this.apiStype;
    data['api_ctype'] = this.apiCtype;
    data['api_afterlv'] = this.apiAfterlv;
    data['api_aftershipid'] = this.apiAftershipid;
    data['api_taik'] = this.apiTaik;
    data['api_souk'] = this.apiSouk;
    data['api_houg'] = this.apiHoug;
    data['api_raig'] = this.apiRaig;
    data['api_tyku'] = this.apiTyku;
    data['api_luck'] = this.apiLuck;
    data['api_soku'] = this.apiSoku;
    data['api_leng'] = this.apiLeng;
    data['api_slot_num'] = this.apiSlotNum;
    data['api_maxeq'] = this.apiMaxeq;
    data['api_buildtime'] = this.apiBuildtime;
    data['api_broken'] = this.apiBroken;
    data['api_powup'] = this.apiPowup;
    data['api_backs'] = this.apiBacks;
    data['api_getmes'] = this.apiGetmes;
    data['api_afterfuel'] = this.apiAfterfuel;
    data['api_afterbull'] = this.apiAfterbull;
    data['api_fuel_max'] = this.apiFuelMax;
    data['api_bull_max'] = this.apiBullMax;
    data['api_voicef'] = this.apiVoicef;
    data['api_tais'] = this.apiTais;
    return data;
  }
}

class ApiMstSlotitemEquiptype {
  int? apiId;
  String? apiName;
  int? apiShowFlg;

  ApiMstSlotitemEquiptype({this.apiId, this.apiName, this.apiShowFlg});

  ApiMstSlotitemEquiptype.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiName = json['api_name'];
    apiShowFlg = json['api_show_flg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_name'] = this.apiName;
    data['api_show_flg'] = this.apiShowFlg;
    return data;
  }
}

class ApiMstEquipExslotShip {
  int? apiSlotitemId;
  List<int>? apiShipIds;

  ApiMstEquipExslotShip({this.apiSlotitemId, this.apiShipIds});

  ApiMstEquipExslotShip.fromJson(Map<String, dynamic> json) {
    apiSlotitemId = json['api_slotitem_id'];
    apiShipIds = json['api_ship_ids'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_slotitem_id'] = this.apiSlotitemId;
    data['api_ship_ids'] = this.apiShipIds;
    return data;
  }
}

class ApiMstStype {
  int? apiId;
  int? apiSortno;
  String? apiName;
  int? apiScnt;
  int? apiKcnt;
  ApiEquipType? apiEquipType;

  ApiMstStype(
      {this.apiId,
        this.apiSortno,
        this.apiName,
        this.apiScnt,
        this.apiKcnt,
        this.apiEquipType});

  ApiMstStype.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiSortno = json['api_sortno'];
    apiName = json['api_name'];
    apiScnt = json['api_scnt'];
    apiKcnt = json['api_kcnt'];
    apiEquipType = json['api_equip_type'] != null
        ? new ApiEquipType.fromJson(json['api_equip_type'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_sortno'] = this.apiSortno;
    data['api_name'] = this.apiName;
    data['api_scnt'] = this.apiScnt;
    data['api_kcnt'] = this.apiKcnt;
    if (this.apiEquipType != null) {
      data['api_equip_type'] = this.apiEquipType!.toJson();
    }
    return data;
  }
}

class ApiEquipType {
  int? i1;
  int? i2;
  int? i3;
  int? i4;
  int? i5;
  int? i6;
  int? i7;
  int? i8;
  int? i9;
  int? i10;
  int? i11;
  int? i12;
  int? i13;
  int? i14;
  int? i15;
  int? i16;
  int? i17;
  int? i18;
  int? i19;
  int? i20;
  int? i21;
  int? i22;
  int? i23;
  int? i24;
  int? i25;
  int? i26;
  int? i27;
  int? i28;
  int? i29;
  int? i30;
  int? i31;
  int? i32;
  int? i33;
  int? i34;
  int? i35;
  int? i36;
  int? i37;
  int? i38;
  int? i39;
  int? i40;
  int? i41;
  int? i42;
  int? i43;
  int? i44;
  int? i45;
  int? i46;
  int? i47;
  int? i48;
  int? i49;
  int? i50;
  int? i51;
  int? i52;
  int? i53;
  int? i54;
  int? i55;
  int? i56;
  int? i57;
  int? i58;
  int? i59;
  int? i60;
  int? i61;
  int? i62;
  int? i63;
  int? i64;
  int? i65;
  int? i66;
  int? i67;
  int? i68;
  int? i69;
  int? i70;
  int? i71;
  int? i72;
  int? i73;
  int? i74;
  int? i75;
  int? i76;
  int? i77;
  int? i78;
  int? i79;
  int? i80;
  int? i81;
  int? i82;
  int? i83;
  int? i84;
  int? i85;
  int? i86;
  int? i87;
  int? i88;
  int? i89;
  int? i90;
  int? i91;
  int? i92;
  int? i93;
  int? i94;
  int? i95;

  ApiEquipType(
      {this.i1,
        this.i2,
        this.i3,
        this.i4,
        this.i5,
        this.i6,
        this.i7,
        this.i8,
        this.i9,
        this.i10,
        this.i11,
        this.i12,
        this.i13,
        this.i14,
        this.i15,
        this.i16,
        this.i17,
        this.i18,
        this.i19,
        this.i20,
        this.i21,
        this.i22,
        this.i23,
        this.i24,
        this.i25,
        this.i26,
        this.i27,
        this.i28,
        this.i29,
        this.i30,
        this.i31,
        this.i32,
        this.i33,
        this.i34,
        this.i35,
        this.i36,
        this.i37,
        this.i38,
        this.i39,
        this.i40,
        this.i41,
        this.i42,
        this.i43,
        this.i44,
        this.i45,
        this.i46,
        this.i47,
        this.i48,
        this.i49,
        this.i50,
        this.i51,
        this.i52,
        this.i53,
        this.i54,
        this.i55,
        this.i56,
        this.i57,
        this.i58,
        this.i59,
        this.i60,
        this.i61,
        this.i62,
        this.i63,
        this.i64,
        this.i65,
        this.i66,
        this.i67,
        this.i68,
        this.i69,
        this.i70,
        this.i71,
        this.i72,
        this.i73,
        this.i74,
        this.i75,
        this.i76,
        this.i77,
        this.i78,
        this.i79,
        this.i80,
        this.i81,
        this.i82,
        this.i83,
        this.i84,
        this.i85,
        this.i86,
        this.i87,
        this.i88,
        this.i89,
        this.i90,
        this.i91,
        this.i92,
        this.i93,
        this.i94,
        this.i95});

  ApiEquipType.fromJson(Map<String, dynamic> json) {
    i1 = json['1'];
    i2 = json['2'];
    i3 = json['3'];
    i4 = json['4'];
    i5 = json['5'];
    i6 = json['6'];
    i7 = json['7'];
    i8 = json['8'];
    i9 = json['9'];
    i10 = json['10'];
    i11 = json['11'];
    i12 = json['12'];
    i13 = json['13'];
    i14 = json['14'];
    i15 = json['15'];
    i16 = json['16'];
    i17 = json['17'];
    i18 = json['18'];
    i19 = json['19'];
    i20 = json['20'];
    i21 = json['21'];
    i22 = json['22'];
    i23 = json['23'];
    i24 = json['24'];
    i25 = json['25'];
    i26 = json['26'];
    i27 = json['27'];
    i28 = json['28'];
    i29 = json['29'];
    i30 = json['30'];
    i31 = json['31'];
    i32 = json['32'];
    i33 = json['33'];
    i34 = json['34'];
    i35 = json['35'];
    i36 = json['36'];
    i37 = json['37'];
    i38 = json['38'];
    i39 = json['39'];
    i40 = json['40'];
    i41 = json['41'];
    i42 = json['42'];
    i43 = json['43'];
    i44 = json['44'];
    i45 = json['45'];
    i46 = json['46'];
    i47 = json['47'];
    i48 = json['48'];
    i49 = json['49'];
    i50 = json['50'];
    i51 = json['51'];
    i52 = json['52'];
    i53 = json['53'];
    i54 = json['54'];
    i55 = json['55'];
    i56 = json['56'];
    i57 = json['57'];
    i58 = json['58'];
    i59 = json['59'];
    i60 = json['60'];
    i61 = json['61'];
    i62 = json['62'];
    i63 = json['63'];
    i64 = json['64'];
    i65 = json['65'];
    i66 = json['66'];
    i67 = json['67'];
    i68 = json['68'];
    i69 = json['69'];
    i70 = json['70'];
    i71 = json['71'];
    i72 = json['72'];
    i73 = json['73'];
    i74 = json['74'];
    i75 = json['75'];
    i76 = json['76'];
    i77 = json['77'];
    i78 = json['78'];
    i79 = json['79'];
    i80 = json['80'];
    i81 = json['81'];
    i82 = json['82'];
    i83 = json['83'];
    i84 = json['84'];
    i85 = json['85'];
    i86 = json['86'];
    i87 = json['87'];
    i88 = json['88'];
    i89 = json['89'];
    i90 = json['90'];
    i91 = json['91'];
    i92 = json['92'];
    i93 = json['93'];
    i94 = json['94'];
    i95 = json['95'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.i1;
    data['2'] = this.i2;
    data['3'] = this.i3;
    data['4'] = this.i4;
    data['5'] = this.i5;
    data['6'] = this.i6;
    data['7'] = this.i7;
    data['8'] = this.i8;
    data['9'] = this.i9;
    data['10'] = this.i10;
    data['11'] = this.i11;
    data['12'] = this.i12;
    data['13'] = this.i13;
    data['14'] = this.i14;
    data['15'] = this.i15;
    data['16'] = this.i16;
    data['17'] = this.i17;
    data['18'] = this.i18;
    data['19'] = this.i19;
    data['20'] = this.i20;
    data['21'] = this.i21;
    data['22'] = this.i22;
    data['23'] = this.i23;
    data['24'] = this.i24;
    data['25'] = this.i25;
    data['26'] = this.i26;
    data['27'] = this.i27;
    data['28'] = this.i28;
    data['29'] = this.i29;
    data['30'] = this.i30;
    data['31'] = this.i31;
    data['32'] = this.i32;
    data['33'] = this.i33;
    data['34'] = this.i34;
    data['35'] = this.i35;
    data['36'] = this.i36;
    data['37'] = this.i37;
    data['38'] = this.i38;
    data['39'] = this.i39;
    data['40'] = this.i40;
    data['41'] = this.i41;
    data['42'] = this.i42;
    data['43'] = this.i43;
    data['44'] = this.i44;
    data['45'] = this.i45;
    data['46'] = this.i46;
    data['47'] = this.i47;
    data['48'] = this.i48;
    data['49'] = this.i49;
    data['50'] = this.i50;
    data['51'] = this.i51;
    data['52'] = this.i52;
    data['53'] = this.i53;
    data['54'] = this.i54;
    data['55'] = this.i55;
    data['56'] = this.i56;
    data['57'] = this.i57;
    data['58'] = this.i58;
    data['59'] = this.i59;
    data['60'] = this.i60;
    data['61'] = this.i61;
    data['62'] = this.i62;
    data['63'] = this.i63;
    data['64'] = this.i64;
    data['65'] = this.i65;
    data['66'] = this.i66;
    data['67'] = this.i67;
    data['68'] = this.i68;
    data['69'] = this.i69;
    data['70'] = this.i70;
    data['71'] = this.i71;
    data['72'] = this.i72;
    data['73'] = this.i73;
    data['74'] = this.i74;
    data['75'] = this.i75;
    data['76'] = this.i76;
    data['77'] = this.i77;
    data['78'] = this.i78;
    data['79'] = this.i79;
    data['80'] = this.i80;
    data['81'] = this.i81;
    data['82'] = this.i82;
    data['83'] = this.i83;
    data['84'] = this.i84;
    data['85'] = this.i85;
    data['86'] = this.i86;
    data['87'] = this.i87;
    data['88'] = this.i88;
    data['89'] = this.i89;
    data['90'] = this.i90;
    data['91'] = this.i91;
    data['92'] = this.i92;
    data['93'] = this.i93;
    data['94'] = this.i94;
    data['95'] = this.i95;
    return data;
  }
}

class ApiMstSlotitem {
  int? apiId;
  int? apiSortno;
  String? apiName;
  List<int>? apiType;
  int? apiTaik;
  int? apiSouk;
  int? apiHoug;
  int? apiRaig;
  int? apiSoku;
  int? apiBaku;
  int? apiTyku;
  int? apiTais;
  int? apiAtap;
  int? apiHoum;
  int? apiRaim;
  int? apiHouk;
  int? apiRaik;
  int? apiBakk;
  int? apiSaku;
  int? apiSakb;
  int? apiLuck;
  int? apiLeng;
  int? apiRare;
  List<int>? apiBroken;
  String? apiUsebull;
  int? apiVersion;
  int? apiCost;
  int? apiDistance;

  ApiMstSlotitem(
      {this.apiId,
        this.apiSortno,
        this.apiName,
        this.apiType,
        this.apiTaik,
        this.apiSouk,
        this.apiHoug,
        this.apiRaig,
        this.apiSoku,
        this.apiBaku,
        this.apiTyku,
        this.apiTais,
        this.apiAtap,
        this.apiHoum,
        this.apiRaim,
        this.apiHouk,
        this.apiRaik,
        this.apiBakk,
        this.apiSaku,
        this.apiSakb,
        this.apiLuck,
        this.apiLeng,
        this.apiRare,
        this.apiBroken,
        this.apiUsebull,
        this.apiVersion,
        this.apiCost,
        this.apiDistance});

  ApiMstSlotitem.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiSortno = json['api_sortno'];
    apiName = json['api_name'];
    apiType = json['api_type'].cast<int>();
    apiTaik = json['api_taik'];
    apiSouk = json['api_souk'];
    apiHoug = json['api_houg'];
    apiRaig = json['api_raig'];
    apiSoku = json['api_soku'];
    apiBaku = json['api_baku'];
    apiTyku = json['api_tyku'];
    apiTais = json['api_tais'];
    apiAtap = json['api_atap'];
    apiHoum = json['api_houm'];
    apiRaim = json['api_raim'];
    apiHouk = json['api_houk'];
    apiRaik = json['api_raik'];
    apiBakk = json['api_bakk'];
    apiSaku = json['api_saku'];
    apiSakb = json['api_sakb'];
    apiLuck = json['api_luck'];
    apiLeng = json['api_leng'];
    apiRare = json['api_rare'];
    apiBroken = json['api_broken'].cast<int>();
    apiUsebull = json['api_usebull'];
    apiVersion = json['api_version'];
    apiCost = json['api_cost'];
    apiDistance = json['api_distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_sortno'] = this.apiSortno;
    data['api_name'] = this.apiName;
    data['api_type'] = this.apiType;
    data['api_taik'] = this.apiTaik;
    data['api_souk'] = this.apiSouk;
    data['api_houg'] = this.apiHoug;
    data['api_raig'] = this.apiRaig;
    data['api_soku'] = this.apiSoku;
    data['api_baku'] = this.apiBaku;
    data['api_tyku'] = this.apiTyku;
    data['api_tais'] = this.apiTais;
    data['api_atap'] = this.apiAtap;
    data['api_houm'] = this.apiHoum;
    data['api_raim'] = this.apiRaim;
    data['api_houk'] = this.apiHouk;
    data['api_raik'] = this.apiRaik;
    data['api_bakk'] = this.apiBakk;
    data['api_saku'] = this.apiSaku;
    data['api_sakb'] = this.apiSakb;
    data['api_luck'] = this.apiLuck;
    data['api_leng'] = this.apiLeng;
    data['api_rare'] = this.apiRare;
    data['api_broken'] = this.apiBroken;
    data['api_usebull'] = this.apiUsebull;
    data['api_version'] = this.apiVersion;
    data['api_cost'] = this.apiCost;
    data['api_distance'] = this.apiDistance;
    return data;
  }
}

class ApiMstFurnituregraph {
  int? apiId;
  int? apiType;
  int? apiNo;
  String? apiFilename;
  String? apiVersion;

  ApiMstFurnituregraph(
      {this.apiId,
        this.apiType,
        this.apiNo,
        this.apiFilename,
        this.apiVersion});

  ApiMstFurnituregraph.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiType = json['api_type'];
    apiNo = json['api_no'];
    apiFilename = json['api_filename'];
    apiVersion = json['api_version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_type'] = this.apiType;
    data['api_no'] = this.apiNo;
    data['api_filename'] = this.apiFilename;
    data['api_version'] = this.apiVersion;
    return data;
  }
}

class ApiMstUseitem {
  int? apiId;
  int? apiUsetype;
  int? apiCategory;
  String? apiName;
  List<String>? apiDescription;
  int? apiPrice;

  ApiMstUseitem(
      {this.apiId,
        this.apiUsetype,
        this.apiCategory,
        this.apiName,
        this.apiDescription,
        this.apiPrice});

  ApiMstUseitem.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiUsetype = json['api_usetype'];
    apiCategory = json['api_category'];
    apiName = json['api_name'];
    apiDescription = json['api_description'].cast<String>();
    apiPrice = json['api_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_usetype'] = this.apiUsetype;
    data['api_category'] = this.apiCategory;
    data['api_name'] = this.apiName;
    data['api_description'] = this.apiDescription;
    data['api_price'] = this.apiPrice;
    return data;
  }
}

class ApiMstPayitem {
  int? apiId;
  int? apiType;
  String? apiName;
  String? apiDescription;
  String? apiShopDescription;
  List<int>? apiItem;
  int? apiPrice;

  ApiMstPayitem(
      {this.apiId,
        this.apiType,
        this.apiName,
        this.apiDescription,
        this.apiShopDescription,
        this.apiItem,
        this.apiPrice});

  ApiMstPayitem.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiType = json['api_type'];
    apiName = json['api_name'];
    apiDescription = json['api_description'];
    apiShopDescription = json['api_shop_description'];
    apiItem = json['api_item'].cast<int>();
    apiPrice = json['api_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_type'] = this.apiType;
    data['api_name'] = this.apiName;
    data['api_description'] = this.apiDescription;
    data['api_shop_description'] = this.apiShopDescription;
    data['api_item'] = this.apiItem;
    data['api_price'] = this.apiPrice;
    return data;
  }
}

class ApiMstItemShop {
  List<int>? apiCabinet1;
  List<int>? apiCabinet2;

  ApiMstItemShop({this.apiCabinet1, this.apiCabinet2});

  ApiMstItemShop.fromJson(Map<String, dynamic> json) {
    apiCabinet1 = json['api_cabinet_1'].cast<int>();
    apiCabinet2 = json['api_cabinet_2'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_cabinet_1'] = this.apiCabinet1;
    data['api_cabinet_2'] = this.apiCabinet2;
    return data;
  }
}

class ApiMstMaparea {
  int? apiId;
  String? apiName;
  int? apiType;

  ApiMstMaparea({this.apiId, this.apiName, this.apiType});

  ApiMstMaparea.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiName = json['api_name'];
    apiType = json['api_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_name'] = this.apiName;
    data['api_type'] = this.apiType;
    return data;
  }
}

class ApiMstMapinfo {
  int? apiId;
  int? apiMapareaId;
  int? apiNo;
  String? apiName;
  int? apiLevel;
  String? apiOpetext;
  String? apiInfotext;
  List<int>? apiItem;
  Null? apiMaxMaphp;
  int? apiRequiredDefeatCount;
  List<int>? apiSallyFlag;

  ApiMstMapinfo(
      {this.apiId,
        this.apiMapareaId,
        this.apiNo,
        this.apiName,
        this.apiLevel,
        this.apiOpetext,
        this.apiInfotext,
        this.apiItem,
        this.apiMaxMaphp,
        this.apiRequiredDefeatCount,
        this.apiSallyFlag});

  ApiMstMapinfo.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiMapareaId = json['api_maparea_id'];
    apiNo = json['api_no'];
    apiName = json['api_name'];
    apiLevel = json['api_level'];
    apiOpetext = json['api_opetext'];
    apiInfotext = json['api_infotext'];
    apiItem = json['api_item'].cast<int>();
    apiMaxMaphp = json['api_max_maphp'];
    apiRequiredDefeatCount = json['api_required_defeat_count'];
    apiSallyFlag = json['api_sally_flag'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_maparea_id'] = this.apiMapareaId;
    data['api_no'] = this.apiNo;
    data['api_name'] = this.apiName;
    data['api_level'] = this.apiLevel;
    data['api_opetext'] = this.apiOpetext;
    data['api_infotext'] = this.apiInfotext;
    data['api_item'] = this.apiItem;
    data['api_max_maphp'] = this.apiMaxMaphp;
    data['api_required_defeat_count'] = this.apiRequiredDefeatCount;
    data['api_sally_flag'] = this.apiSallyFlag;
    return data;
  }
}

class ApiMstMapbgm {
  int? apiId;
  int? apiMapareaId;
  int? apiNo;
  int? apiMovingBgm;
  List<int>? apiMapBgm;
  List<int>? apiBossBgm;

  ApiMstMapbgm(
      {this.apiId,
        this.apiMapareaId,
        this.apiNo,
        this.apiMovingBgm,
        this.apiMapBgm,
        this.apiBossBgm});

  ApiMstMapbgm.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiMapareaId = json['api_maparea_id'];
    apiNo = json['api_no'];
    apiMovingBgm = json['api_moving_bgm'];
    apiMapBgm = json['api_map_bgm'].cast<int>();
    apiBossBgm = json['api_boss_bgm'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_maparea_id'] = this.apiMapareaId;
    data['api_no'] = this.apiNo;
    data['api_moving_bgm'] = this.apiMovingBgm;
    data['api_map_bgm'] = this.apiMapBgm;
    data['api_boss_bgm'] = this.apiBossBgm;
    return data;
  }
}

class ApiMstMission {
  int? apiId;
  String? apiDispNo;
  int? apiMapareaId;
  String? apiName;
  String? apiDetails;
  int? apiResetType;
  int? apiDamageType;
  int? apiTime;
  int? apiDeckNum;
  int? apiDifficulty;
  double? apiUseFuel;
  double? apiUseBull;
  List<int>? apiWinItem1;
  List<int>? apiWinItem2;
  List<int>? apiWinMatLevel;
  int? apiReturnFlag;
  List<int>? apiSampleFleet;

  ApiMstMission(
      {this.apiId,
        this.apiDispNo,
        this.apiMapareaId,
        this.apiName,
        this.apiDetails,
        this.apiResetType,
        this.apiDamageType,
        this.apiTime,
        this.apiDeckNum,
        this.apiDifficulty,
        this.apiUseFuel,
        this.apiUseBull,
        this.apiWinItem1,
        this.apiWinItem2,
        this.apiWinMatLevel,
        this.apiReturnFlag,
        this.apiSampleFleet});

  ApiMstMission.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiDispNo = json['api_disp_no'];
    apiMapareaId = json['api_maparea_id'];
    apiName = json['api_name'];
    apiDetails = json['api_details'];
    apiResetType = json['api_reset_type'];
    apiDamageType = json['api_damage_type'];
    apiTime = json['api_time'];
    apiDeckNum = json['api_deck_num'];
    apiDifficulty = json['api_difficulty'];
    apiUseFuel = json['api_use_fuel'];
    apiUseBull = json['api_use_bull'];
    apiWinItem1 = json['api_win_item1'].cast<int>();
    apiWinItem2 = json['api_win_item2'].cast<int>();
    apiWinMatLevel = json['api_win_mat_level'].cast<int>();
    apiReturnFlag = json['api_return_flag'];
    apiSampleFleet = json['api_sample_fleet'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_disp_no'] = this.apiDispNo;
    data['api_maparea_id'] = this.apiMapareaId;
    data['api_name'] = this.apiName;
    data['api_details'] = this.apiDetails;
    data['api_reset_type'] = this.apiResetType;
    data['api_damage_type'] = this.apiDamageType;
    data['api_time'] = this.apiTime;
    data['api_deck_num'] = this.apiDeckNum;
    data['api_difficulty'] = this.apiDifficulty;
    data['api_use_fuel'] = this.apiUseFuel;
    data['api_use_bull'] = this.apiUseBull;
    data['api_win_item1'] = this.apiWinItem1;
    data['api_win_item2'] = this.apiWinItem2;
    data['api_win_mat_level'] = this.apiWinMatLevel;
    data['api_return_flag'] = this.apiReturnFlag;
    data['api_sample_fleet'] = this.apiSampleFleet;
    return data;
  }
}

class ApiMstConst {
  ApiDpflagQuest? apiDpflagQuest;
  ApiDpflagQuest? apiBokoMaxShips;
  ApiDpflagQuest? apiParallelQuestMax;

  ApiMstConst(
      {this.apiDpflagQuest, this.apiBokoMaxShips, this.apiParallelQuestMax});

  ApiMstConst.fromJson(Map<String, dynamic> json) {
    apiDpflagQuest = json['api_dpflag_quest'] != null
        ? new ApiDpflagQuest.fromJson(json['api_dpflag_quest'])
        : null;
    apiBokoMaxShips = json['api_boko_max_ships'] != null
        ? new ApiDpflagQuest.fromJson(json['api_boko_max_ships'])
        : null;
    apiParallelQuestMax = json['api_parallel_quest_max'] != null
        ? new ApiDpflagQuest.fromJson(json['api_parallel_quest_max'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.apiDpflagQuest != null) {
      data['api_dpflag_quest'] = this.apiDpflagQuest!.toJson();
    }
    if (this.apiBokoMaxShips != null) {
      data['api_boko_max_ships'] = this.apiBokoMaxShips!.toJson();
    }
    if (this.apiParallelQuestMax != null) {
      data['api_parallel_quest_max'] = this.apiParallelQuestMax!.toJson();
    }
    return data;
  }
}

class ApiDpflagQuest {
  String? apiStringValue;
  int? apiIntValue;

  ApiDpflagQuest({this.apiStringValue, this.apiIntValue});

  ApiDpflagQuest.fromJson(Map<String, dynamic> json) {
    apiStringValue = json['api_string_value'];
    apiIntValue = json['api_int_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_string_value'] = this.apiStringValue;
    data['api_int_value'] = this.apiIntValue;
    return data;
  }
}

class ApiMstShipupgrade {
  int? apiId;
  int? apiCurrentShipId;
  int? apiOriginalShipId;
  int? apiUpgradeType;
  int? apiUpgradeLevel;
  int? apiDrawingCount;
  int? apiCatapultCount;
  int? apiReportCount;
  int? apiAviationMatCount;
  int? apiArmsMatCount;
  int? apiSortno;
  int? apiBoilerCount;

  ApiMstShipupgrade(
      {this.apiId,
        this.apiCurrentShipId,
        this.apiOriginalShipId,
        this.apiUpgradeType,
        this.apiUpgradeLevel,
        this.apiDrawingCount,
        this.apiCatapultCount,
        this.apiReportCount,
        this.apiAviationMatCount,
        this.apiArmsMatCount,
        this.apiSortno,
        this.apiBoilerCount});

  ApiMstShipupgrade.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiCurrentShipId = json['api_current_ship_id'];
    apiOriginalShipId = json['api_original_ship_id'];
    apiUpgradeType = json['api_upgrade_type'];
    apiUpgradeLevel = json['api_upgrade_level'];
    apiDrawingCount = json['api_drawing_count'];
    apiCatapultCount = json['api_catapult_count'];
    apiReportCount = json['api_report_count'];
    apiAviationMatCount = json['api_aviation_mat_count'];
    apiArmsMatCount = json['api_arms_mat_count'];
    apiSortno = json['api_sortno'];
    apiBoilerCount = json['api_boiler_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_current_ship_id'] = this.apiCurrentShipId;
    data['api_original_ship_id'] = this.apiOriginalShipId;
    data['api_upgrade_type'] = this.apiUpgradeType;
    data['api_upgrade_level'] = this.apiUpgradeLevel;
    data['api_drawing_count'] = this.apiDrawingCount;
    data['api_catapult_count'] = this.apiCatapultCount;
    data['api_report_count'] = this.apiReportCount;
    data['api_aviation_mat_count'] = this.apiAviationMatCount;
    data['api_arms_mat_count'] = this.apiArmsMatCount;
    data['api_sortno'] = this.apiSortno;
    data['api_boiler_count'] = this.apiBoilerCount;
    return data;
  }
}

class ApiMstBgm {
  int? apiId;
  String? apiName;

  ApiMstBgm({this.apiId, this.apiName});

  ApiMstBgm.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiName = json['api_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_name'] = this.apiName;
    return data;
  }
}

class ApiMstEquipShip {
  int? apiShipId;
  List<int>? apiEquipType;

  ApiMstEquipShip({this.apiShipId, this.apiEquipType});

  ApiMstEquipShip.fromJson(Map<String, dynamic> json) {
    apiShipId = json['api_ship_id'];
    apiEquipType = json['api_equip_type'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_ship_id'] = this.apiShipId;
    data['api_equip_type'] = this.apiEquipType;
    return data;
  }
}

class ApiMstFurniture {
  int? apiId;
  int? apiType;
  int? apiNo;
  String? apiTitle;
  String? apiDescription;
  int? apiRarity;
  int? apiPrice;
  int? apiSaleflg;
  int? apiSeason;
  int? apiVersion;
  int? apiOutsideId;
  int? apiActiveFlag;

  ApiMstFurniture(
      {this.apiId,
        this.apiType,
        this.apiNo,
        this.apiTitle,
        this.apiDescription,
        this.apiRarity,
        this.apiPrice,
        this.apiSaleflg,
        this.apiSeason,
        this.apiVersion,
        this.apiOutsideId,
        this.apiActiveFlag});

  ApiMstFurniture.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiType = json['api_type'];
    apiNo = json['api_no'];
    apiTitle = json['api_title'];
    apiDescription = json['api_description'];
    apiRarity = json['api_rarity'];
    apiPrice = json['api_price'];
    apiSaleflg = json['api_saleflg'];
    apiSeason = json['api_season'];
    apiVersion = json['api_version'];
    apiOutsideId = json['api_outside_id'];
    apiActiveFlag = json['api_active_flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_type'] = this.apiType;
    data['api_no'] = this.apiNo;
    data['api_title'] = this.apiTitle;
    data['api_description'] = this.apiDescription;
    data['api_rarity'] = this.apiRarity;
    data['api_price'] = this.apiPrice;
    data['api_saleflg'] = this.apiSaleflg;
    data['api_season'] = this.apiSeason;
    data['api_version'] = this.apiVersion;
    data['api_outside_id'] = this.apiOutsideId;
    data['api_active_flag'] = this.apiActiveFlag;
    return data;
  }
}

class ApiMstShipgraph {
  int? apiId;
  String? apiFilename;
  List<String>? apiVersion;
  List<int>? apiBattleN;
  List<int>? apiBattleD;
  int? apiSortno;
  List<int>? apiBokoN;
  List<int>? apiBokoD;
  List<int>? apiKaisyuN;
  List<int>? apiKaisyuD;
  List<int>? apiKaizoN;
  List<int>? apiKaizoD;
  List<int>? apiMapN;
  List<int>? apiMapD;
  List<int>? apiEnsyufN;
  List<int>? apiEnsyufD;
  List<int>? apiEnsyueN;
  List<int>? apiWeda;
  List<int>? apiWedb;
  List<int>? apiPa;
  List<int>? apiPab;

  ApiMstShipgraph(
      {this.apiId,
        this.apiFilename,
        this.apiVersion,
        this.apiBattleN,
        this.apiBattleD,
        this.apiSortno,
        this.apiBokoN,
        this.apiBokoD,
        this.apiKaisyuN,
        this.apiKaisyuD,
        this.apiKaizoN,
        this.apiKaizoD,
        this.apiMapN,
        this.apiMapD,
        this.apiEnsyufN,
        this.apiEnsyufD,
        this.apiEnsyueN,
        this.apiWeda,
        this.apiWedb,
        this.apiPa,
        this.apiPab});

  ApiMstShipgraph.fromJson(Map<String, dynamic> json) {
    apiId = json['api_id'];
    apiFilename = json['api_filename'];
    apiVersion = json['api_version'].cast<String>();
    apiBattleN = json['api_battle_n'].cast<int>();
    apiBattleD = json['api_battle_d'].cast<int>();
    apiSortno = json['api_sortno'];
    apiBokoN = json['api_boko_n'].cast<int>();
    apiBokoD = json['api_boko_d'].cast<int>();
    apiKaisyuN = json['api_kaisyu_n'].cast<int>();
    apiKaisyuD = json['api_kaisyu_d'].cast<int>();
    apiKaizoN = json['api_kaizo_n'].cast<int>();
    apiKaizoD = json['api_kaizo_d'].cast<int>();
    apiMapN = json['api_map_n'].cast<int>();
    apiMapD = json['api_map_d'].cast<int>();
    apiEnsyufN = json['api_ensyuf_n'].cast<int>();
    apiEnsyufD = json['api_ensyuf_d'].cast<int>();
    apiEnsyueN = json['api_ensyue_n'].cast<int>();
    apiWeda = json['api_weda'].cast<int>();
    apiWedb = json['api_wedb'].cast<int>();
    apiPa = json['api_pa'].cast<int>();
    apiPab = json['api_pab'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_id'] = this.apiId;
    data['api_filename'] = this.apiFilename;
    data['api_version'] = this.apiVersion;
    data['api_battle_n'] = this.apiBattleN;
    data['api_battle_d'] = this.apiBattleD;
    data['api_sortno'] = this.apiSortno;
    data['api_boko_n'] = this.apiBokoN;
    data['api_boko_d'] = this.apiBokoD;
    data['api_kaisyu_n'] = this.apiKaisyuN;
    data['api_kaisyu_d'] = this.apiKaisyuD;
    data['api_kaizo_n'] = this.apiKaizoN;
    data['api_kaizo_d'] = this.apiKaizoD;
    data['api_map_n'] = this.apiMapN;
    data['api_map_d'] = this.apiMapD;
    data['api_ensyuf_n'] = this.apiEnsyufN;
    data['api_ensyuf_d'] = this.apiEnsyufD;
    data['api_ensyue_n'] = this.apiEnsyueN;
    data['api_weda'] = this.apiWeda;
    data['api_wedb'] = this.apiWedb;
    data['api_pa'] = this.apiPa;
    data['api_pab'] = this.apiPab;
    return data;
  }
}
