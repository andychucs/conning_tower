import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("BugCheck", () {
    String data = '''{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":{"api_ship_id":[1572,1533,1530,1530],"api_win_rank":"S","api_get_exp":1060,"api_mvp":3,"api_member_lv":120,"api_member_exp":18541443,"api_get_base_exp":210,"api_get_ship_exp":[-1,378,252,504,252,-1,-1],"api_get_exp_lvup":[[243931,245900],[520977,527000],[135090,138100],[329169,331000]],"api_dests":4,"api_destsf":1,"api_quest_name":"\u93ae\u5b88\u5e9c\u8fd1\u6d77","api_quest_level":5,"api_enemy_info":{"api_level":"","api_rank":"","api_deck_name":"\u6575\u901a\u5546\u7834\u58ca\u4e3b\u529b\u6f5c\u6c34\u8266\u968a"},"api_first_clear":1,"api_mapcell_incentive":0,"api_get_flag":[0,0,0],"api_get_eventflag":0,"api_get_exmap_rate":"75","api_get_exmap_useitem_id":"57","api_escape_flag":0,"api_escape":null,"api_next_map_ids":[16]}}''';

    var json = jsonDecode(data);

    var result = ReqSortieBattleResultEntity.fromJson(json);
  });
}
