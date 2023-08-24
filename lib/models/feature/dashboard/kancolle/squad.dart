import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'squad.freezed.dart';

@freezed
class Squad with _$Squad {
  factory Squad({
    required int id,
    required String name,
    required int operation,
    required List<Ship> ships,
  }) = _Squad;

}