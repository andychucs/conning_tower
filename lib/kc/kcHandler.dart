import 'dart:convert';

import 'package:conning_tower/kc/kcApiClass/kcsapi/api_port/port.dart';
import 'package:conning_tower/kc/kcApiClass/api_req_sortie/battle.dart';
void kcJsonToDb(String responseURL,String jsonString){

  if(responseURL.contains("api_port/port")){
    KcPortClass temp=  KcPortClass.fromJson(json.decode(jsonString));
    print("KCA testing");
    print("燃料: "+temp.apiData.apiMaterial[0].apiValue.toString());
    print("弾薬: "+temp.apiData.apiMaterial[1].apiValue.toString());
    print("鋼材: "+temp.apiData.apiMaterial[2].apiValue.toString());
    print("ボーキサイト: "+temp.apiData.apiMaterial[3].apiValue.toString());
    print("高速建造材: "+temp.apiData.apiMaterial[4].apiValue.toString());
    print("高速修復材: "+temp.apiData.apiMaterial[5].apiValue.toString());
    print("開発資材: "+temp.apiData.apiMaterial[6].apiValue.toString());
    print("改修資材: "+temp.apiData.apiMaterial[7].apiValue.toString());
  }
}