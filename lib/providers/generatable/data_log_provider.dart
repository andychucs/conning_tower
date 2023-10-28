import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_log_provider.g.dart';

@riverpod
class DataLogState extends _$DataLogState {
  @override
  FutureOr<RawDataLog> build() async {
    return RawDataLog(time: 0, data: []);
  }
}
