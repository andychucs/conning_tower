import 'package:freezed_annotation/freezed_annotation.dart';

part 'kdock.freezed.dart';
part 'kdock.g.dart';

@freezed
class KDock with _$KDock{
  const KDock._();

  factory KDock({
    required int apiId,
    required int apiState,
    required int apiCreatedShipId,
    required int apiCompleteTime,
    required String apiCompleteTimeStr,
    required int apiItem1,
    required int apiItem2,
    required int apiItem3,
    required int apiItem4,
    required int apiItem5,
  }) = _KDock;

  factory KDock.fromJson(Map<String, dynamic> json) => _$KDockFromJson(json);

  static get source => "kcsapi/api_get_member/kdock.json";

}
