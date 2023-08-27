import 'package:freezed_annotation/freezed_annotation.dart';

part 'kcwiki_api_ship_entity.freezed.dart';

part 'kcwiki_api_ship_entity.g.dart';

@unfreezed
class KcwikiApiShipEntity with _$KcwikiApiShipEntity {
  factory KcwikiApiShipEntity({
    required int id,
    required String name,
    @JsonKey(name: 'sort_no') int? sortNo,
    required int stype,
    @JsonKey(name: 'after_ship_id') int? afterShipId,
    String? filename,
    @JsonKey(name: 'wiki_id') String? wikiId,
    @JsonKey(name: 'chinese_name') String? chineseName,
    @JsonKey(name: 'stype_name') String? stypeName,
    @JsonKey(name: 'stype_name_chinese') String? stypeNameChinese,
    @JsonKey(name: 'can_drop') bool? canDrop,
  }) = _KcwikiApiShipEntity;

  factory KcwikiApiShipEntity.fromJson(Map<String, dynamic> json) =>
      _$KcwikiApiShipEntityFromJson(json);
}
