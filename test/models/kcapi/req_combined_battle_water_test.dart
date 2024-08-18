import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleWaterEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"成功","api_data":{"api_deck_id":1,"api_formation":[12,5,4],"api_f_nowhps":[98,96,62,61,46,39],"api_f_maxhps":[98,96,62,61,49,39],"api_f_nowhps_combined":[61,60,31,37,31,40],"api_f_maxhps_combined":[61,60,31,37,31,40],"api_fParam":[[144,0,108,122],[99,36,70,95],[76,87,84,75],[76,88,85,74],[60,88,65,47],[70,82,118,57]],"api_fParam_combined":[[81,90,86,78],[81,88,88,74],[65,92,72,52],[58,89,65,58],[69,89,65,54],[65,89,72,63]],"api_ship_ke":[1570,1570,2247],"api_ship_lv":[50,50,1],"api_e_nowhps":[33,33,"N/A"],"api_e_maxhps":[33,33,"N/A"],"api_eSlot":[[1515,1503,-1,-1,-1],[1515,1503,-1,-1,-1],[1561,1617,1619,1574,-1]],"api_eParam":[[24,70,0,15],[24,70,0,15],[40,0,70,44]],"api_smoke_type":0,"api_balloon_cell":0,"api_atoll_cell":0,"api_midnight_flag":0,"api_search":[1,5],"api_stage_flag":[1,1,1],"api_kouku":{"api_plane_from":[[3,4,5],[3]],"api_stage1":{"api_f_count":68,"api_f_lostcount":4,"api_e_count":48,"api_e_lostcount":19,"api_disp_seiku":2,"api_touch_plane":[-1,-1]},"api_stage2":{"api_f_count":18,"api_f_lostcount":0,"api_e_count":21,"api_e_lostcount":21,"api_air_fire":{"api_idx":5,"api_kind":48,"api_use_items":[533,533,410]}},"api_stage3":{"api_frai_flag":[0,0,0,0,0,0],"api_erai_flag":[0,0,0],"api_fbak_flag":[0,0,0,0,0,0],"api_ebak_flag":[0,0,0],"api_fcl_flag":[0,0,0,0,0,0],"api_ecl_flag":[0,0,0],"api_fdam":[0,0,0,0,0,0],"api_edam":[0,0,0],"api_f_sp_list":[null,null,null,null,null,null],"api_e_sp_list":[null,null,null]},"api_stage3_combined":{"api_frai_flag":[0,0,0,0,0,0],"api_fbak_flag":[0,0,0,0,0,0],"api_fcl_flag":[0,0,0,0,0,0],"api_fdam":[0,0,0,0,0,0],"api_f_sp_list":[null,null,null,null,null,null]}},"api_support_flag":0,"api_support_info":null,"api_opening_taisen_flag":0,"api_opening_taisen":null,"api_opening_flag":0,"api_opening_atack":null,"api_hourai_flag":[1,1,1,0],"api_hougeki1":{"api_at_eflag":[0,0],"api_at_list":[4,5],"api_at_type":[0,0],"api_df_list":[[1],[1]],"api_si_list":[["165"],[-1]],"api_cl_list":[[1],[2]],"api_damage":[[3.1],[21]]},"api_hougeki2":{"api_at_eflag":[0,0],"api_at_list":[4,5],"api_at_type":[0,0],"api_df_list":[[0],[0]],"api_si_list":[["165"],[-1]],"api_cl_list":[[1],[1]],"api_damage":[[1],[7]]},"api_hougeki3":{"api_at_eflag":[0,0,0,0,0],"api_at_list":[7,8,9,10,11],"api_at_type":[0,0,0,0,0],"api_df_list":[[1],[0],[0],[0],[0]],"api_si_list":[["471"],[-1],[-1],[-1],[-1]],"api_cl_list":[[1],[1],[1],[1],[1]],"api_damage":[[11],[9],[10],[5],[7]]},"api_raigeki":null}}
''');

    var data = ReqCombinedBattleWaterEntity.fromJson(json);

    expect(data, isNotNull);

  });
}