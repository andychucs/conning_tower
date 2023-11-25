import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_area.freezed.dart';
part 'map_area.g.dart';

@freezed
class KcwikiMapArea with _$KcwikiMapArea {
  factory KcwikiMapArea({
    required int id,
    required String name,
    required List<int> maps,
    required bool event,
    int? level,
  }) = _KcwikiMapArea;

  factory KcwikiMapArea.fromJson(Map<String, dynamic> json) =>
      _$KcwikiMapAreaFromJson(json);
}
