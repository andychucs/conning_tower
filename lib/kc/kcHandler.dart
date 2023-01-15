import 'dart:convert';

import 'package:conning_tower/kc/kcApiClass/kcsapi/api_port/port.dart';
import 'package:conning_tower/kc/kcApiClass/kcsapi/api_req_map/start.dart';
import 'package:conning_tower/kc/kcApiClass/api_req_sortie/battle.dart';
import 'package:conning_tower/kc/kcApiClass/api_req_sortie/battleresult.dart';
import 'package:conning_tower/kc/kcApiClass/api_get_member/mapinfo.dart';
import 'package:conning_tower/kc/kcApiClass/api_get_member/questlist.dart';
import 'package:conning_tower/kc/kcApiClass/api_get_member/require_info.dart';
import 'package:conning_tower/kc/kcApiClass/api_start2/getData.dart';
void kcDataHandler(String responseURL,String jsonString){

  if(responseURL.contains("api_port/port")){
    KcPortClass temp=  KcPortClass.fromJson(json.decode(jsonString));
    print("KCA testing");
    print("燃料: "+temp.apiMaterial[0].apiValue.toString());
    print("弾薬: "+temp.apiMaterial[1].apiValue.toString());
    print("鋼材: "+temp.apiMaterial[2].apiValue.toString());
    print("ボーキサイト: "+temp.apiMaterial[3].apiValue.toString());
    print("高速建造材: "+temp.apiMaterial[4].apiValue.toString());
    print("高速修復材: "+temp.apiMaterial[5].apiValue.toString());
    print("開発資材: "+temp.apiMaterial[6].apiValue.toString());
    print("改修資材: "+temp.apiMaterial[7].apiValue.toString());
  }
}