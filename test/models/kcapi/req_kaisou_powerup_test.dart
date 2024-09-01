import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqKaisouPowerupEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":{"api_powerup_flag":0,"api_ship":{"api_id":72,"api_sortno":81,"api_ship_id":44,"api_lv":9,"api_exp":[3630,870,3],"api_nowhp":16,"api_maxhp":16,"api_soku":10,"api_leng":1,"api_slot":[91,36,-1,-1,-1],"api_onslot":[0,0,0,0,0],"api_slot_ex":0,"api_kyouka":[4,13,9,6,0,0,0],"api_backs":2,"api_fuel":12,"api_bull":16,"api_slotnum":2,"api_ndock_time":0,"api_ndock_item":[0,0],"api_srate":1,"api_cond":49,"api_karyoku":[18,29],"api_raisou":[37,69],"api_taiku":[22,39],"api_soukou":[12,19],"api_kaihi":[46,79],"api_taisen":[23,49],"api_sakuteki":[6,19],"api_lucky":[10,49],"api_locked":0,"api_locked_equip":0,"api_sally_area":0},"api_deck":[{"api_member_id":13195234,"api_id":1,"api_name":"\u7b2c1\u8266\u968a","api_name_id":"","api_mission":[0,0,0,0],"api_flagship":"0","api_ship":[72,-1,-1,-1,-1,-1]},{"api_member_id":13195234,"api_id":2,"api_name":"\u7b2c2\u8266\u968a","api_name_id":"","api_mission":[0,0,0,0],"api_flagship":"0","api_ship":[16,1,-1,-1,-1,-1]}]}}
    ''');

    final data = ReqKaisouPowerupEntity.fromJson(json);

    expect(data, isNotNull);
  });
}
