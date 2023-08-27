import 'dart:convert';

import 'package:conning_tower/models/data/data_model_adapter.dart';
import 'package:conning_tower/models/data/kcwiki/map_area.dart';
import 'package:conning_tower/models/data/kcwiki/map_data.dart';
import 'package:conning_tower/models/data/kcwiki/ship.dart';
import 'package:conning_tower/models/data/kcwiki/shiptype.dart';
import 'package:conning_tower/models/data/kcwiki/slotitem.dart';
import 'package:conning_tower/models/data/kcsapi/api_response.dart';
import 'package:conning_tower/models/data/kcwiki/useitem.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  test("api_response.dart", () {
    var json = jsonDecode("""
  {"api_result":1,"api_result_msg":"\u6210\u529f","api_data":[{"api_id":1,"api_state":2,"api_created_ship_id":53,"api_complete_time":1691946894311,"api_complete_time_str":"2023-08-14 02:14:54","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":2,"api_state":2,"api_created_ship_id":17,"api_complete_time":1691945005171,"api_complete_time_str":"2023-08-14 01:43:25","api_item1":30,"api_item2":30,"api_item3":30,"api_item4":30,"api_item5":1},{"api_id":3,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0},{"api_id":4,"api_state":-1,"api_created_ship_id":0,"api_complete_time":0,"api_complete_time_str":"0","api_item1":0,"api_item2":0,"api_item3":0,"api_item4":0,"api_item5":0}]}
  """);
    var source = "kcsapi/api_get_member/kdock.json";
    var api = ApiResponse.fromJson(json);

    for (var i in api.apiData) {
      print(DataModelAdapter().parseData(source, i));
    }
    print(api);
  });

  test("ship.dart", () {
    var json = jsonDecode("""{"id":1,"sort_no":31,"name":"睦月","yomi":"むつき","stype":2,"ctype":28,"cnum":1,"backs":3,"after_lv":20,"after_ship_id":254,"get_mes":"睦月です。<br>はりきって、まいりましょー！","voice_f":0,"filename":"snohitatusbk","file_version":["41","19","808"],"book_table_id":[1,5185,5497],"book_sinfo":"帝国海軍の駆逐艦で初めて大型で強力な61cm魚雷を搭載しました、睦月です！<br>旧式ながら、第一線で頑張ったのです！","stats":{"taik":[13,24],"souk":[5,18],"houg":[6,29],"raig":[18,59],"tyku":[7,29],"luck":[12,49],"soku":10,"leng":1,"kaih":37,"tais":16,"slot_num":2,"max_eq":[0,0,0,0,0],"after_fuel":100,"after_bull":100,"fuel_max":15,"bull_max":15,"broken":[1,1,4,0],"pow_up":[1,1,0,0],"build_time":18},"graph":{"boko_n":[187,36],"boko_d":[124,37],"kaisyu_n":[42,10],"kaisyu_d":[42,10],"kaizo_n":[105,-46],"kaizo_d":[43,-48],"map_n":[43,36],"map_d":[-19,22],"ensyuf_n":[193,27],"ensyuf_d":[-4,-48],"ensyue_n":[193,0],"battle_n":[109,40],"battle_d":[43,31],"wed_a":[168,162],"wed_b":[217,229]},"wiki_id":"031","chinese_name":"睦月","can_drop":true,"can_construct":true}""");
    var ship = Ship.fromJson(json);
    print(ship);
  });

  test("map_data.dart", () {
      var json = jsonDecode("""{"id":11,"name":"鎮守府正面海域","routes":{"0":{"from":null,"to":1},"1":{"from":1,"to":"A"},"2":{"from":"A","to":"B"},"3":{"from":"A","to":"C"}},"cells":{"A":{"name":"敵偵察艦","type":null,"boss":false,"routes":[1]},"B":{"name":"敵はぐれ艦隊","type":null,"boss":false,"routes":[2]},"C":{"name":"敵主力艦隊","type":null,"boss":true,"routes":[3]}},"image":"MapHD1-1.png"}""");
      var map = MapData.fromJson(json);
      print(map);
  });

  test("map_area.dart", () {
    final jsonString = '''
[
  {"id":1,"name":"鎮守府海域","maps":[11,12,13,14,15,16],"event":false},
  {"id":2,"name":"南西諸島海域","maps":[21,22,23,24,25],"event":false},
  {"id":3,"name":"北方海域","maps":[31,32,33,34,35],"event":false},
  {"id":7,"name":"南西海域","maps":[71,72,73,74,75],"event":false},
  {"id":4,"name":"西方海域","maps":[41,42,43,44,45],"event":false},
  {"id":5,"name":"南方海域","maps":[51,52,53,54,55],"event":false},
  {"id":6,"name":"中部海域","maps":[61,62,63,64,65],"event":false},
  {"id":52,"name":"帰ってきた鎮守府秋刀魚祭り","maps":[521,522,523],"event":true,"level":4},
  {"id":53,"name":"発令！「捷三号作戦警戒」","maps":[531,532,533,534,535],"event":true,"level":4},
  {"id":54,"name":"激闘！R方面作戦","maps":[541,542,543,544,545],"event":true,"level":4},
  {"id":55,"name":"大規模反攻上陸！トーチ作戦！","maps":[551,552,553,554,555,556],"event":true,"level":4},
  {"id":56,"name":"絶対防衛線！「小笠原兵団」救援","maps":[561,562,563,564,565,566],"event":true,"level":4},
  {"id":57,"name":"船団護衛！輸送航路防衛戦","maps":[571,572,573,574],"event":true,"level":4}
]
  ''';

    var jsonData = jsonDecode(jsonString);

    final List<dynamic> mapAreas = jsonData.map((mapData) {
      return MapArea.fromJson(mapData);
    }).toList();

    print(mapAreas);
  });

  test("shiptype.dart", () {
    var json = jsonDecode("""{"id":1,"sort_no":1,"name":"海防艦","scnt":1,"kcnt":2,"equip_type":{"1":1,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0,"10":0,"11":0,"12":1,"13":0,"14":1,"15":1,"16":0,"17":0,"18":0,"19":0,"20":0,"21":1,"22":0,"23":1,"24":0,"25":0,"26":0,"27":0,"28":0,"29":0,"30":0,"31":0,"32":0,"33":0,"34":0,"35":0,"36":1,"37":1,"38":0,"39":1,"40":0,"41":0,"42":0,"43":1,"44":0,"45":0,"46":0,"47":0,"48":0,"49":0,"50":0,"51":0,"52":0,"53":0,"54":0,"55":0,"56":0,"57":0,"58":0,"59":0,"60":0,"61":0,"62":0,"63":0,"64":0,"65":0,"66":0,"67":0,"68":0,"69":0,"70":0,"71":0,"72":0,"73":0,"74":0,"75":0,"76":0,"77":0,"78":0,"79":0,"80":0,"81":0,"82":0,"83":0,"84":0,"85":0,"86":0,"87":0,"88":0,"89":0,"90":0,"91":0,"92":0,"93":0,"94":0},"chinese_name":"海防舰","english_name":"DE"}""");
    var shipType = ShipType.fromJson(json);
    print(shipType);
  });

  test("slotitem.dart", () {
    var json =jsonDecode("""{"id":1,"sort_no":1,"name":"12cm単装砲","type":[1,1,1,1,0],"rare":0,"broken":[0,1,1,0],"info":"旧型の小型砲です。<br>旧型駆逐艦に標準的主砲として搭載されました。<br>装填・操砲も人力ですが、シンプルな構造で経済性も高く、駆逐艦や海防艦等の主砲として、長く使われました。<br>対空射撃には不向きです。","usebull":0,"cost":null,"distance":null,"stats":{"taik":0,"souk":0,"houg":1,"raig":0,"soku":0,"baku":0,"tyku":1,"tais":0,"atap":0,"houm":0,"raim":0,"houk":0,"raik":0,"bakk":0,"saku":0,"sakb":0,"luck":0,"leng":1},"improvement":[{"consume":{"resource":[10,20,40,0],"useitem":[[{"id":3,"amount":[2,2]},{"id":4,"amount":[1,2]}],[{"id":3,"amount":[2,3]},{"id":4,"amount":[1,2]}]],"slotitem":[{"id":1,"amount":1},{"id":1,"amount":2}]},"upgrade":{"id":293,"level":0,"consume":{"useitem":[{"id":3,"amount":[2,4]},{"id":4,"amount":[2,6]}],"slotitem":{"id":28,"amount":1}}},"day":[[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}],[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}],[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}],[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}],[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}],[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}],[{"ship_id":1},{"ship_id":254},{"ship_id":434},{"ship_id":2},{"ship_id":255},{"ship_id":435}]]}],"chinese_name":"12cm单装炮"}""");
    var slotItem = SlotItem.fromJson(json);
    print(slotItem);
  });

  test("useitem.dart", () {
    var json = jsonDecode("""{"id":1,"usetype":1,"category":1,"name":"高速修復材","description":["入渠時間を短縮できる。",""],"price":0,"chinese_name":"高速修复材","chinese_description":"可以缩短入渠时间。"}""");
    var useItem = UseItem.fromJson(json);
    print(useItem);
  });

}