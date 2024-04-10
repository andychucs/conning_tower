import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_hokyu_charge_entity.freezed.dart';

part 'req_hokyu_charge_entity.g.dart';

@unfreezed
class ReqHokyuChargeEntity with _$ReqHokyuChargeEntity {
  static get source => '/api_req_hokyu/charge';

  factory ReqHokyuChargeEntity({
    @JsonKey(name: 'api_result') int? apiResult,
    @JsonKey(name: 'api_result_msg') String? apiResultMsg,
    @JsonKey(name: 'api_data') ReqHokyuChargeApiDataEntity? apiData,
  }) = _ReqHokyuChargeEntity;

  factory ReqHokyuChargeEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqHokyuChargeEntityFromJson(json);
}

@unfreezed
class ReqHokyuChargeApiDataEntity with _$ReqHokyuChargeApiDataEntity {
  factory ReqHokyuChargeApiDataEntity({
    @JsonKey(name: 'api_ship')
    List<ReqHokyuChargeApiDataApiShipEntity>? apiShip,
    @JsonKey(name: 'api_material') List<int>? apiMaterial,
    @JsonKey(name: 'api_use_bou') int? apiUseBou,
  }) = _ReqHokyuChargeApiDataEntity;

  factory ReqHokyuChargeApiDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqHokyuChargeApiDataEntityFromJson(json);
}

@unfreezed
class ReqHokyuChargeApiDataApiShipEntity
    with _$ReqHokyuChargeApiDataApiShipEntity {
  factory ReqHokyuChargeApiDataApiShipEntity({
    @JsonKey(name: 'api_id') int? apiId,
    @JsonKey(name: 'api_fuel') int? apiFuel,
    @JsonKey(name: 'api_bull') int? apiBull,
    @JsonKey(name: 'api_onslot') List<int>? apiOnslot,
  }) = _ReqHokyuChargeApiDataApiShipEntity;

  factory ReqHokyuChargeApiDataApiShipEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ReqHokyuChargeApiDataApiShipEntityFromJson(json);
}
