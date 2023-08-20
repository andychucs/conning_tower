import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship.freezed.dart';
part 'ship.g.dart';

@freezed
class Ship with _$Ship {
  factory Ship({
    required int id,
    required int sortNo,
    required String name,
    required String yomi,
    required int stype,
    required int ctype,
    required int cnum,
    required int backs,
    required int afterLv,
    required int afterShipId,
    required String getMes,
    required int voiceF,
    required String filename,
    required List<String> fileVersion,
    required List<int> bookTableId,
    required String bookSinfo,
    required ShipStats stats,
    required ShipGraph graph,
    required String wikiId,
    required String chineseName,
    required bool canDrop,
    required bool canConstruct,
  }) = _Ship;

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);
}

@freezed
class ShipStats with _$ShipStats {
  factory ShipStats({
    required List<int> taik,
    required List<int> souk,
    required List<int> houg,
    required List<int> raig,
    required List<int> tyku,
    required List<int> luck,
    required int soku,
    required int leng,
    required int kaih,
    required int tais,
    required int slotNum,
    required List<int> maxEq,
    required int afterFuel,
    required int afterBull,
    required int fuelMax,
    required int bullMax,
    required List<int> broken,
    required List<int> powUp,
    required int buildTime,
  }) = _ShipStats;

  factory ShipStats.fromJson(Map<String, dynamic> json) =>
      _$ShipStatsFromJson(json);
}

@freezed
class ShipGraph with _$ShipGraph {
  factory ShipGraph({
    required List<int> bokoN,
    required List<int> bokoD,
    required List<int> kaisyuN,
    required List<int> kaisyuD,
    required List<int> kaizoN,
    required List<int> kaizoD,
    required List<int> mapN,
    required List<int> mapD,
    required List<int> ensyufN,
    required List<int> ensyufD,
    required List<int> ensyueN,
    required List<int> battleN,
    required List<int> battleD,
    required List<int> wedA,
    required List<int> wedB,
  }) = _ShipGraph;

  factory ShipGraph.fromJson(Map<String, dynamic> json) =>
      _$ShipGraphFromJson(json);
}
