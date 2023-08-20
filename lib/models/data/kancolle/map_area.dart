import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_area.freezed.dart';
part 'map_area.g.dart';

@freezed
class MapArea with _$MapArea {
  factory MapArea({
    required int id,
    required String name,
    required List<int> maps,
    required bool event,
    int? level,
  }) = _MapArea;

  factory MapArea.fromJson(Map<String, dynamic> json) =>
      _$MapAreaFromJson(json);
}
