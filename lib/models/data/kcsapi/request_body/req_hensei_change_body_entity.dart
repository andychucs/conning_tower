import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_hensei_change_body_entity.freezed.dart';

part 'req_hensei_change_body_entity.g.dart';

@unfreezed
class ReqHenseiChangeBodyEntity with _$ReqHenseiChangeBodyEntity {
  static const source = '/api_req_hensei/change';
  factory ReqHenseiChangeBodyEntity({
    @JsonKey(name: 'api_id', fromJson: int.tryParse) int? apiId,
    @JsonKey(name: 'api_ship_idx', fromJson: int.tryParse) int? apiShipIdx,
    @JsonKey(name: 'api_ship_id', fromJson: int.tryParse) int? apiShipId,
  }) = _ReqHenseiChangeBodyEntity;

  factory ReqHenseiChangeBodyEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqHenseiChangeBodyEntityFromJson(json);
}
