import 'package:conning_tower/models/feature/dashboard/web_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final webInfoProvider = StateProvider<WebInfo>((ref) {
  return WebInfo(url: '', cookies: [], statusCode: 100, title: '');
});
