import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqMapStartEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"成功","api_data":{"api_cell_data":[{"api_id":3105,"api_no":0,"api_color_no":0,"api_passed":0},{"api_id":3106,"api_no":1,"api_color_no":2,"api_passed":1},{"api_id":3107,"api_no":2,"api_color_no":4,"api_passed":1},{"api_id":3108,"api_no":3,"api_color_no":3,"api_passed":1},{"api_id":3109,"api_no":4,"api_color_no":2,"api_passed":1},{"api_id":3110,"api_no":5,"api_color_no":4,"api_passed":1},{"api_id":3111,"api_no":6,"api_color_no":4,"api_passed":1},{"api_id":3112,"api_no":7,"api_color_no":2,"api_passed":1},{"api_id":3113,"api_no":8,"api_color_no":4,"api_passed":1},{"api_id":3114,"api_no":9,"api_color_no":4,"api_passed":1},{"api_id":3115,"api_no":10,"api_color_no":4,"api_passed":1},{"api_id":3116,"api_no":11,"api_color_no":4,"api_passed":1},{"api_id":3117,"api_no":12,"api_color_no":4,"api_passed":1},{"api_id":3118,"api_no":13,"api_color_no":4,"api_passed":1},{"api_id":3119,"api_no":14,"api_color_no":2,"api_passed":1},{"api_id":3120,"api_no":15,"api_color_no":4,"api_passed":1},{"api_id":3121,"api_no":16,"api_color_no":5,"api_passed":1},{"api_id":3122,"api_no":17,"api_color_no":2,"api_passed":1},{"api_id":3123,"api_no":18,"api_color_no":4,"api_passed":1},{"api_id":3124,"api_no":19,"api_color_no":4,"api_passed":1},{"api_id":3125,"api_no":20,"api_color_no":4,"api_passed":1},{"api_id":3126,"api_no":21,"api_color_no":5,"api_passed":1}],"api_rashin_flg":0,"api_rashin_id":0,"api_maparea_id":2,"api_mapinfo_no":4,"api_no":2,"api_color_no":4,"api_event_id":4,"api_event_kind":1,"api_next":1,"api_bosscell_no":16,"api_bosscomp":1,"api_airsearch":{"api_plane_type":0,"api_result":0},"api_e_deck_info":[{"api_kind":2,"api_ship_ids":[1522,1522,1509]}],"api_limit_state":0,"api_from_no":0}}
    ''');

    final data = ReqMapStartEntity.fromJson(json);

    expect(data, isNotNull);

  });
}