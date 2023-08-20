import 'package:freezed_annotation/freezed_annotation.dart';

part 'sea_force_base.freezed.dart';

@freezed
class SeaForceBase with _$SeaForceBase {

  const factory SeaForceBase({
    required int level
}) = _SeaForceBase;

}
