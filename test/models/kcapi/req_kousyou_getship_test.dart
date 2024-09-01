import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqKousyouGetshipEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"成功","api_data":{"api_id":26478,"api_ship_id":94,"api_kdock":[{"api_id":1,"api_state":0,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":1},{"api_id":2,"api_state":3,"api_created_ship_id":21,"api_complete_time":0,"api_complete_time_str":"0","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":3,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0},{"api_id":4,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0}],"api_ship":{"api_id":26478,"api_sortno":69,"api_ship_id":94,"api_lv":1,"api_exp":[0,100,0],"api_nowhp":15,"api_maxhp":15,"api_soku":10,"api_leng":1,"api_slot":[46803,-1,-1,-1,-1],"api_onslot":[0,0,0,0,0],"api_slot_ex":0,"api_kyouka":[0,0,0,0,0,0,0],"api_backs":2,"api_fuel":15,"api_bull":20,"api_slotnum":2,"api_ndock_time":0,"api_ndock_item":[0,0],"api_srate":0,"api_cond":40,"api_karyoku":[12,29],"api_raisou":[27,69],"api_taiku":[14,39],"api_soukou":[5,19],"api_kaihi":[41,79],"api_taisen":[20,49],"api_sakuteki":[5,19],"api_lucky":[10,49],"api_locked":0,"api_locked_equip":0,"api_sally_area":0},"api_slotitem":[{"api_id":46803,"api_slotitem_id":2}]}}    
''');

    final data = ReqKousyouGetshipEntity.fromJson(json);

    expect(data, isNotNull);
  });
}
