import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_data.freezed.dart';
part 'map_data.g.dart';

@freezed
class MapData with _$MapData {
  factory MapData({
    required int id,
    required String name,
    required Map<String, Route> routes,
    required Map<String, Cell> cells,
    required String image,
  }) = _MapData;

  factory MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);
}

@freezed
class Route with _$Route {
  factory Route({
    dynamic from,
    dynamic to,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
class Cell with _$Cell {
  factory Cell({
    required String name,
    dynamic type,
    required bool boss,
    required List<int> routes,
  }) = _Cell;

  factory Cell.fromJson(Map<String, dynamic> json) => _$CellFromJson(json);
}
