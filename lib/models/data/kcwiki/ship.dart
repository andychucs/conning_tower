import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship.freezed.dart';
part 'ship.g.dart';

@freezed
class Ship with _$Ship {
  factory Ship({
    required int id,
    int? sortNo,
    String? name,
    String? yomi,
    int? stype,
    int? ctype,
    int? cnum,
    int? backs,
    int? afterLv,
    int? afterShipId,
    String? getMes,
    int? voiceF,
    required String filename,
    required List<String> fileVersion,
    List<int>? bookTableId,
    String? bookSinfo,
    required ShipStats stats,
    required ShipGraph graph,
    String? wikiId,
    String? chineseName,
    required bool canDrop,
    required bool canConstruct,
  }) = _Ship;

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);
}

@freezed
class ShipStats with _$ShipStats {
  factory ShipStats({
    List<int>? taik,
    List<int>? souk,
    List<int>? houg,
    List<int>? raig,
    List<int>? tyku,
    List<int>? luck,
    int? soku,
    int? leng,
    int? kaih,
    int? tais,
    int? slotNum,
    List<int>? maxEq,
    int? afterFuel,
    int? afterBull,
    int? fuelMax,
    int? bullMax,
    List<int>? broken,
    List<int>? powUp,
    int? buildTime,
  }) = _ShipStats;

  factory ShipStats.fromJson(Map<String, dynamic> json) =>
      _$ShipStatsFromJson(json);
}

@freezed
class ShipGraph with _$ShipGraph {
  factory ShipGraph({
    List<int>? bokoN,
    List<int>? bokoD,
    List<int>? kaisyuN,
    List<int>? kaisyuD,
    List<int>? kaizoN,
    List<int>? kaizoD,
    List<int>? mapN,
    List<int>? mapD,
    List<int>? ensyufN,
    List<int>? ensyufD,
    List<int>? ensyueN,
    List<int>? battleN,
    List<int>? battleD,
    List<int>? wedA,
    List<int>? wedB,
  }) = _ShipGraph;

  factory ShipGraph.fromJson(Map<String, dynamic> json) =>
      _$ShipGraphFromJson(json);
}
