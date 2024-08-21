import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleResultEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"成功","api_data":{"api_ship_id":[1757,1710,1697,2036,1955,1955],"api_win_rank":"A","api_get_exp":187,"api_mvp":1,"api_mvp_combined":1,"api_member_lv":120,"api_member_exp":19423832,"api_get_base_exp":350,"api_get_ship_exp":[-1,1050,350,350,-1,350,350],"api_get_ship_exp_combined":[-1,1050,350,-1,350,350,350],"api_get_exp_lvup":[[1000000],[375965,383000],[562040,564500],[341275,343400],[441506,442000],[622895,631500]],"api_get_exp_lvup_combined":[[421753,426500],[407761,411500],[331306,343400],[506692,509000],[430414,442000],[236600,236800,245900]],"api_dests":8,"api_destsf":0,"api_quest_name":"ジブラルタル/アルボラン海","api_quest_level":11,"api_enemy_info":{"api_level":"","api_rank":"","api_deck_name":"深海地中海艦隊 主力艦隊"},"api_first_clear":0,"api_get_flag":[0,1,0],"api_get_ship":{"api_ship_id":515,"api_ship_type":"正規空母","api_ship_name":"Ark Royal","api_ship_getmes":"私は、Her Majesty’s Ship Ark Royal。<br>Admiral…貴方が……。……よろしく。"},"api_get_exmap_rate":0,"api_get_exmap_useitem_id":0,"api_escape_flag":1,"api_escape":{"api_escape_idx":[2,5,12],"api_tow_idx":[11]}}}    
''');

    var data = ReqCombinedBattleResultEntity.fromJson(json);

    expect(data, isNotNull);

  });
}