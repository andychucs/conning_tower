import 'dart:convert';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/battle_info.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("Battle", () {

    // demo data.
    // make 12 ships
    List<Ship> ships = List.generate(12, (index) => Ship(uid: index, shipId: index, level: 1, nowHP: 100, maxHP: 100));

    test("Battle 2+4 VS 4", () {
      final inBattleSquads = [
        Squad(id: 1, name: "", ships: [ships[0], ships[1]]),
        Squad(id: 2, name: "", ships: [ships[2], ships[3], ships[4], ships[5]]),
      ];
      const rawData = """
      {"api_result":1,"api_result_msg":"成功","api_data":{"api_deck_id":1,"api_formation":[11,4,3],"api_f_nowhps":[69,57],"api_f_maxhps":[74,57],"api_f_nowhps_combined":[60,37,31,30],"api_f_maxhps_combined":[60,37,31,30],"api_fParam":[[67,0,82,76],[40,0,48,62]],"api_fParam_combined":[[73,70,70,75],[58,56,114,52],[60,82,82,52],[58,84,76,50]],"api_ship_ke":[1535,1535,1535,1534],"api_ship_lv":[50,50,50,50],"api_e_nowhps":[44,44,44,37],"api_e_maxhps":[44,44,44,37],"api_eSlot":[[1515,1515,1514,-1,-1],[1515,1515,1514,-1,-1],[1515,1515,1514,-1,-1],[1515,1515,1513,-1,-1]],"api_eParam":[[0,96,0,36],[0,96,0,36],[0,96,0,36],[0,86,0,30]],"api_smoke_type":0,"api_balloon_cell":0,"api_atoll_cell":0,"api_midnight_flag":0,"api_search":[1,5],"api_air_base_attack":[{"api_base_id":1,"api_stage_flag":[1,1,0],"api_plane_from":[null,null],"api_squadron_plane":[{"api_mst_id":480,"api_count":4},{"api_mst_id":459,"api_count":18},{"api_mst_id":404,"api_count":18},{"api_mst_id":484,"api_count":18}],"api_stage1":{"api_f_count":58,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0,"api_disp_seiku":1,"api_touch_plane":[480,-1]},"api_stage2":{"api_f_count":54,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0},"api_stage3":null},{"api_base_id":1,"api_stage_flag":[1,1,0],"api_plane_from":[null,null],"api_squadron_plane":[{"api_mst_id":480,"api_count":4},{"api_mst_id":459,"api_count":18},{"api_mst_id":404,"api_count":18},{"api_mst_id":484,"api_count":18}],"api_stage1":{"api_f_count":58,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0,"api_disp_seiku":1,"api_touch_plane":[-1,-1]},"api_stage2":{"api_f_count":54,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0},"api_stage3":null},{"api_base_id":2,"api_stage_flag":[1,1,0],"api_plane_from":[null,null],"api_squadron_plane":[{"api_mst_id":403,"api_count":18},{"api_mst_id":459,"api_count":18},{"api_mst_id":459,"api_count":18},{"api_mst_id":432,"api_count":18}],"api_stage1":{"api_f_count":72,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0,"api_disp_seiku":1,"api_touch_plane":[-1,-1]},"api_stage2":{"api_f_count":72,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0},"api_stage3":null},{"api_base_id":2,"api_stage_flag":[1,1,0],"api_plane_from":[null,null],"api_squadron_plane":[{"api_mst_id":403,"api_count":18},{"api_mst_id":459,"api_count":18},{"api_mst_id":459,"api_count":18},{"api_mst_id":432,"api_count":18}],"api_stage1":{"api_f_count":72,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0,"api_disp_seiku":1,"api_touch_plane":[-1,-1]},"api_stage2":{"api_f_count":72,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0},"api_stage3":null}],"api_stage_flag":[1,1,1],"api_kouku":{"api_plane_from":[[2],null],"api_stage1":{"api_f_count":18,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0,"api_disp_seiku":1,"api_touch_plane":[-1,-1]},"api_stage2":{"api_f_count":18,"api_f_lostcount":0,"api_e_count":0,"api_e_lostcount":0},"api_stage3":{"api_frai_flag":[0,0],"api_erai_flag":[0,0,0,0],"api_fbak_flag":[0,0],"api_ebak_flag":[0,0,0,0],"api_fcl_flag":[0,0],"api_ecl_flag":[0,0,0,0],"api_fdam":[0,0],"api_edam":[0,0,0,0],"api_f_sp_list":[null,null],"api_e_sp_list":[null,null,null,null]},"api_stage3_combined":{"api_frai_flag":[0,0,0,0],"api_fbak_flag":[0,0,0,0],"api_fcl_flag":[0,0,0,0],"api_fdam":[0,0,0,0],"api_f_sp_list":[null,null,null,null]}},"api_support_flag":0,"api_support_info":null,"api_opening_taisen_flag":1,"api_opening_taisen":{"api_at_eflag":[0,0,0,0],"api_at_list":[6,8,7,9],"api_at_type":[0,0,0,0],"api_df_list":[[2],[3],[1],[3]],"api_si_list":[["288"],["288"],["288"],["378"]],"api_cl_list":[[1],[0],[1],[0]],"api_damage":[[171.1],[0],[151.1],[0]]},"api_opening_flag":1,"api_opening_atack":{"api_frai_list_items":[null,null,null,null,null,null,null,null,null,null,null,null],"api_fcl_list_items":[null,null,null,null,null,null,null,null,null,null,null,null],"api_fdam":[0,0,0,0,0,0,0,25,0,0,0,0],"api_fydam_list_items":[null,null,null,null,null,null,null,null,null,null,null,null],"api_erai_list_items":[[6],null,null,[7],null,null,null],"api_ecl_list_items":[[0],null,null,[1],null,null,null],"api_edam":[0,0,0,0,0,0,0],"api_eydam_list_items":[[0],null,null,[25],null,null,null]},"api_hourai_flag":[1,0,0,0],"api_hougeki1":{"api_at_eflag":[0,0],"api_at_list":[6,8],"api_at_type":[0,0],"api_df_list":[[3],[0]],"api_si_list":[["288"],["288"]],"api_cl_list":[[1],[1]],"api_damage":[[184],[133]]}}}
      """;
      final json = jsonDecode(rawData);
      const path = "/api_req_combined_battle/battle";
      dynamic model = DataModelAdapter().parseData(path, json);

      final battleInfo = BattleInfo();
      battleInfo.parseReqCombinedBattle(model.apiData!, inBattleSquads);
      expect(battleInfo.formation, 11);

    });
  });
}