import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/req/battle/req_combined_battle_ec_midnight_battle_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleECMidnightBattleEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"成功","api_data":{"api_deck_id":1,"api_formation":[12,14,2],"api_f_nowhps":[93,24,42,11,72,10],"api_f_maxhps":[93,71,82,52,78,43],"api_f_nowhps_combined":[40,46,29,35,31,31],"api_f_maxhps_combined":[43,52,31,35,31,31],"api_fParam":[[114,0,92,104],[51,0,82,70],[107,0,87,93],[74,68,72,68],[95,30,81,91],[58,0,48,56]],"api_fParam_combined":[[63,139,46,63],[72,70,66,75],[65,92,71,52],[54,72,77,52],[53,90,72,50],[52,90,61,50]],"api_ship_ke":[1760,1835,1697,2036,1955,1955],"api_ship_lv":[1,1,1,1,1,1],"api_ship_ke_combined":[1905,1779,1592,1623,1623,1623],"api_ship_lv_combined":[1,1,1,1,1,1],"api_e_nowhps":[285,162,0,0,160,0],"api_e_maxhps":[880,770,450,740,390,390],"api_e_nowhps_combined":[17,0,0,0,0,0],"api_e_maxhps_combined":[150,118,66,46,46,46],"api_eSlot":[[1578,1578,1570,1574,-1],[1577,1577,1559,1574,-1],[1509,1509,1512,-1,-1],[1596,1596,1603,1610,-1],[1600,1600,1593,1603,-1],[1600,1600,1593,1603,-1]],"api_eSlot_combined":[[1506,1506,1542,1543,-1],[1556,1557,1558,1558,-1],[1550,1550,1545,1525,-1],[1502,1559,1544,-1,-1],[1502,1559,1544,-1,-1],[1502,1559,1544,-1,-1]],"api_eParam":[[390,155,180,289],[252,0,84,184],[185,0,84,158],[188,118,98,198],[138,138,88,211],[138,138,88,211]],"api_eParam_combined":[[78,90,50,89],[48,0,68,93],[64,92,96,68],[58,76,48,36],[58,76,48,36],[58,76,48,36]],"api_smoke_type":0,"api_balloon_cell":0,"api_atoll_cell":0,"api_friendly_info":{"api_production_type":3,"api_ship_id":[949,607,976,399],"api_ship_lv":[60,81,80,82],"api_nowhps":[39,18,18,18],"api_maxhps":[39,18,18,18],"api_Slot":[[524,524,101,-1,-1],[214,213,-1,-1,-1],[214,213,-1,-1,-1],[214,213,-1,-1,-1]],"api_slot_ex":[524,458,458,458],"api_Param":[[42,0,32,34],[12,88,0,21],[13,88,0,20],[12,84,0,19]],"api_voice_id":[158,148,158,159],"api_voice_p_no":[1,2,3,0]},"api_friendly_battle":{"api_flare_pos":[0,-1],"api_hougeki":{"api_at_eflag":[0,1,0,1,0,0],"api_at_list":[0,0,1,4,2,3],"api_n_mother_list":[0,0,0,0,0,0],"api_df_list":[[4,4],[0,0],[6,6],[0],[1,1],[0,0]],"api_si_list":[[524,524],[1578,1578],[458,214],[1600],[458,214],[458,214]],"api_cl_list":[[1,1],[1,1],[1,1],[0],[1,1],[1,1]],"api_sp_list":[1,1,3,0,3,3],"api_damage":[[20,15],[28,6],[181,160],[0],[97,94],[34,19]]}},"api_active_deck":[2,1],"api_touch_plane":[-1,-1],"api_flare_pos":[-1,-1],"api_hougeki":{"api_at_eflag":[0,1,0,0,0,0],"api_at_list":[6,0,8,9,10,11],"api_n_mother_list":[0,0,0,0,0,0],"api_df_list":[[4,4],[7,7],[0],[0,0],[0],[0,-1,-1]],"api_si_list":[["520","357"],[1578,1578],[-1],["308","308"],[-1],[376,179,412]],"api_cl_list":[[1,1],[1,1],[1],[1,1],[0],[1,-1,-1]],"api_sp_list":[1,1,0,1,0,9],"api_damage":[[15,114],[32,1],[29],[23,25],[0],[139,-1,-1]]}}}
    ''');

    var data = ReqCombinedBattleECMidnightBattleEntity.fromJson(json);

    expect(data.apiData?.apiHougeki!.apiDamage?[0][0], 15);

  });
}