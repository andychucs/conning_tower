import 'package:conning_tower/models/feature/dashboard/kancolle/raw_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rawDataProvider = StateProvider<RawData>((ref) {
  return RawData(source: '', data: '');
});
