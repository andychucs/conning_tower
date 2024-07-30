import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqCombinedBattleLdAirbattleEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":{"api_deck_id":1,"api_formation":[13,3,1],"api_f_nowhps":[70,98,45,77,48,31],"api_f_maxhps":[71,98,77,77,52,31],"api_f_nowhps_combined":[35,25,32,45,31,34],"api_f_maxhps_combined":[35,37,32,45,37,34],"api_fParam":[[51,0,82,70],[102,0,90,92],[99,0,88,90],[98,0,87,91],[72,70,70,75],[69,89,65,54]],"api_fParam_combined":[[65,89,72,63],[58,56,114,52],[59,89,59,59],[57,83,88,67],[63,85,81,55],[55,86,75,55]],"api_ship_ke":[2245,1708,1524,1542,1542,2235],"api_ship_lv":[1,1,1,1,1,1],"api_e_nowhps":[570,370,90,88,88,330],"api_e_maxhps":[570,370,90,88,88,330],"api_eSlot":[[1552,1552,1561,1574,-1],[1501,1541,1571,1571,-1],[1509,1509,1512,1528,-1],[1509,1508,1512,1528,-1],[1509,1508,1512,1528,-1],[1562,1561,1561,1574,-1]],"api_eParam":[[207,0,167,14],[95,90,100,175],[85,0,70,85],[75,0,65,88],[75,0,65,88],[54,0,80,80]],"api_smoke_type":0,"api_balloon_cell":0,"api_atoll_cell":0,"api_midnight_flag":0,"api_search":[1,1],"api_stage_flag":[1,1,1],"api_kouku":{"api_plane_from":[[1,3,4],[1,2,6]],"api_stage1":{"api_f_count":117,"api_f_lostcount":19,"api_e_count":176,"api_e_lostcount":41,"api_disp_seiku":0,"api_touch_plane":[-1,-1]},"api_stage2":{"api_f_count":78,"api_f_lostcount":0,"api_e_count":135,"api_e_lostcount":28},"api_stage3":{"api_frai_flag":[0,0,0,0,0,0],"api_erai_flag":[0,0,0,0,0,0],"api_fbak_flag":[0,0,1,1,1,0],"api_ebak_flag":[0,0,0,0,0,0],"api_fcl_flag":[0,0,0,0,0,0],"api_ecl_flag":[0,0,0,0,0,0],"api_fdam":[0,0,0,0.1,0,0],"api_edam":[0,0,0,0,0,0],"api_f_sp_list":[null,null,null,null,null,null],"api_e_sp_list":[null,null,null,null,null,null]},"api_stage3_combined":{"api_frai_flag":[0,1,0,0,0,0],"api_fbak_flag":[0,0,1,0,0,0],"api_fcl_flag":[0,0,0,0,0,0],"api_fdam":[0,0,0,0,0,0],"api_f_sp_list":[null,null,null,null,null,null]}}}}''');

    var data = ReqCombinedBattleLdAirbattleEntity.fromJson(json);

    expect(data, isNotNull);

  });
}