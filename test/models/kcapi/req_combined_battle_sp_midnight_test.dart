import 'dart:convert';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleEachBattleEntity.source, () {
    var json = jsonDecode('''
    {"api_result":1,"api_result_msg":"成功","api_data":{"api_deck_id":1,"api_formation":[6,4,4],"api_f_nowhps":[107,92,81,40,53,45],"api_f_maxhps":[107,92,81,40,53,61],"api_f_nowhps_combined":[36,61,24,31,33,39],"api_f_maxhps_combined":[36,61,33,31,39,39],"api_fParam":[[144,0,108,122],[116,0,119,107],[60,0,85,81],[37,0,41,46],[81,88,88,74],[81,90,86,78]],"api_fParam_combined":[[59,99,59,59],[81,88,88,74],[65,87,73,54],[66,86,73,51],[62,82,95,56],[70,82,108,57]],"api_ship_ke":[1639,1638,1637,1637],"api_ship_lv":[1,1,1,1],"api_e_nowhps":[15,9,9,9],"api_e_maxhps":[15,9,9,9],"api_eSlot":[[1515,1515,-1,-1,-1],[1515,1515,-1,-1,-1],[1515,-1,-1,-1,-1],[1515,-1,-1,-1,-1]],"api_eParam":[[15,98,18,29],[9,98,18,29],[9,88,12,19],[9,88,12,19]],"api_smoke_type":0,"api_balloon_cell":0,"api_atoll_cell":0,"api_n_support_flag":0,"api_n_support_info":null,"api_touch_plane":[538,-1],"api_flare_pos":[-1,-1],"api_hougeki":{"api_at_eflag":[0,1,0,1,0,1,0,0,0],"api_at_list":[6,0,7,1,8,2,9,10,11],"api_n_mother_list":[0,0,0,0,0,0,0,0,0],"api_df_list":[[3],[11,11],[3,3],[9],[2],[11],[0,0],[2,2],[1,1]],"api_si_list":[["15"],[1515,1515],["286","286"],[1515],["286"],[1515],["58","58"],[314,314,412],["122","122"]],"api_cl_list":[[0],[1,1],[2,1],[2],[0],[0],[1,1],[2,1],[1,1]],"api_sp_list":[0,3,3,0,0,0,3,13,1],"api_damage":[[0],[5,4],[60,0],[16],[0],[0],[39,27],[104,68],[82,0]]}}}
    ''');

    var data = DataModelAdapter.toEntity(ReqCombinedBattleEachBattleEntity.source, json);

    expect(data, isNotNull);

  });
}