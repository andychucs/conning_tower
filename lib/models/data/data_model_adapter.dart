
import 'dart:convert';

import 'kcsapi/api_response.dart';
import 'kcsapi/member/kdock.dart';

class DataModelAdapter {
  final Map<String, Function(Map<String, dynamic>)> modelMap;

  DataModelAdapter() : modelMap = {
    KDock.source: (json) => KDock.fromJson(json),
    // Add other mappings as needed
  };

  dynamic parseData(String source, Map<String, dynamic> json) {
    if (modelMap.containsKey(source)) {
      return modelMap[source]!(json);
    }
    return null;
  }
}

main(){
  var json = jsonDecode("""
  {"api_result":1,"api_result_msg":"\u6210\u529f","api_data":[{"api_id":1,"api_state":2,"api_created_ship_id":53,"api_complete_time":1691946894311,"api_complete_time_str":"2023-08-14 02:14:54","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":2,"api_state":2,"api_created_ship_id":17,"api_complete_time":1691945005171,"api_complete_time_str":"2023-08-14 01:43:25","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":3,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0},{"api_id":4,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0}]}
  """);
  var source = "kcsapi/api_get_member/kdock.json";
  var api = ApiResponse.fromJson(json);

  for (var i in api.apiData) {
    print(DataModelAdapter().parseData(source, i));
  }
  print(api);
}