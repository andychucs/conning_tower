import 'package:freezed_annotation/freezed_annotation.dart';

part 'shiptype.freezed.dart';
part 'shiptype.g.dart';

@freezed
class ShipType with _$ShipType {
  factory ShipType({
    required int id,
    required int sortNo,
    required String name,
    required int scnt,
    required int kcnt,
    required Map<String, int> equipType,
    required String chineseName,
    required String englishName,
  }) = _ShipType;

  factory ShipType.fromJson(Map<String, dynamic> json) =>
      _$ShipTypeFromJson(json);
}
