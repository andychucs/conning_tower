import 'package:flutter_riverpod/flutter_riverpod.dart';

class Alert {
  final String title;
  final String content;
  final String? data;
  Alert(this.title, this.content, {this.data});
}

final alertStateProvider = StateProvider<Alert>((ref) {
  return Alert("", "");
});
