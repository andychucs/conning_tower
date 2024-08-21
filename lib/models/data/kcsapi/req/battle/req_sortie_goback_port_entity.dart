import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_sortie_goback_port_entity.freezed.dart';
part 'req_sortie_goback_port_entity.g.dart';

@freezed
class ReqSortieGobackPortEntity with _$ReqSortieGobackPortEntity {
  static const source = "/api_req_sortie/goback_port";

  const factory ReqSortieGobackPortEntity({
    required int apiResult,
    required String apiResultMsg,
  }) = _ReqSortieGobackPortEntity;

  factory ReqSortieGobackPortEntity.fromJson(Map<String, dynamic> json) =>
      _$ReqSortieGobackPortEntityFromJson(json);
}
