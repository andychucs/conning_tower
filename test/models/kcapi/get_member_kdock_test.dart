import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(GetMemberKdockEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":[{"api_id":1,"api_state":2,"api_created_ship_id":34,"api_complete_time":1725115797589,"api_complete_time_str":"2024-08-31 23:49:57","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":2,"api_state":2,"api_created_ship_id":19,"api_complete_time":1725116297226,"api_complete_time_str":"2024-08-31 23:58:17","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":3,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0},{"api_id":4,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0}]}
    ''');

    final data = GetMemberKdockEntity.fromJson(json);

    expect(data, isNotNull);
  });
}
