import 'package:conning_tower/models/feature/task.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tasksStateProvider = StateProvider<Tasks>((ref) {
  return Tasks(items: []);
});