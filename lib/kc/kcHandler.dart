import 'dart:convert';

import 'package:conning_tower/kc/kcApiClass/kcsapi/api_port/port.dart';

void kcJsonToDb(String responseURL,String jsonString){

  if(responseURL.contains("api_port/port")){
    KcPortClass temp=  KcPortClass.fromJson(json.decode(jsonString));
    print("KCA testing");
    print(temp.apiBasic);
  }
}