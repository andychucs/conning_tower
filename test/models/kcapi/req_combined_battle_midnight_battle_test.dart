import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleMidnightBattleEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"成功","api_data":{"api_deck_id":1,"api_formation":[12,2,1],"api_f_nowhps":[93,62,73,14,36,43],"api_f_maxhps":[93,71,82,52,78,43],"api_f_nowhps_combined":[8,52,35,31,31,31],"api_f_maxhps_combined":[31,52,35,31,31,31],"api_fParam":[[114,0,92,104],[51,0,82,70],[107,0,87,93],[74,68,71,68],[95,30,80,91],[58,0,48,56]],"api_fParam_combined":[[65,92,69,52],[72,70,65,75],[54,72,76,52],[52,90,59,50],[53,90,72,50],[67,90,61,51]],"api_ship_ke":[2018,2018,2236,2179,2194,2194],"api_ship_lv":[1,1,1,1,1,1],"api_e_nowhps":[2082,1870,0,0,0,0],"api_e_maxhps":[4800,4800,440,280,39,39],"api_eSlot":[[1565,1565,1580,1562,-1],[1565,1565,1580,1562,-1],[1562,1562,1561,1586,-1],[1565,1565,1643,1567,-1],[1515,1515,1643,-1,-1],[1515,1515,1643,-1,-1]],"api_eParam":[[178,144,99,199],[178,144,99,199],[80,0,90,90],[160,0,44,135],[39,122,43,47],[39,122,43,47]],"api_smoke_type":0,"api_balloon_cell":1,"api_atoll_cell":0,"api_touch_plane":[469,-1],"api_flare_pos":[-1,-1],"api_hougeki":{"api_at_eflag":[0,0,1,0,0,0,0],"api_at_list":[6,7,1,8,9,10,11],"api_n_mother_list":[0,0,0,0,0,0,0],"api_df_list":[[0,0],[1,1],[6,6],[1,1],[0],[0,0],[0,0]],"api_si_list":[["122","122"],["122","122"],[1565,1565],["308","308"],[-1],["122","122"],["122","122"]],"api_cl_list":[[2,1],[2,1],[2,1],[2,1],[0],[1,2],[1,2]],"api_sp_list":[1,1,1,1,0,1,1],"api_damage":[[1162,639],[215,152],[6,0],[140,83],[0],[19,28],[671,1185]]}}}    ''');

    var data = ReqCombinedBattleMidnightBattleEntity.fromJson(json);

    expect(data.apiData?.apiHougeki!.apiDamage![0][0], 1162);

  });
}