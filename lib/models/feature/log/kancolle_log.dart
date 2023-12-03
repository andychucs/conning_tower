import 'dart:convert';

import 'package:objectbox/objectbox.dart';

abstract class KancolleLog {
  late int id;

  Map<String, dynamic>? toJson() {
    return null;
  }
}

@Entity()
class KancolleLogEntity {
  int id;

  @Index()
  int timestamp;

  String logStr;

  KancolleLogEntity({this.id = 0, required this.timestamp, required this.logStr});


  factory KancolleLogEntity.fromLog(KancolleLog log) {
    return KancolleLogEntity(timestamp: log.id, logStr: jsonEncode(log.toJson()));
  }

}