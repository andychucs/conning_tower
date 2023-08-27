import 'package:freezed_annotation/freezed_annotation.dart';

part 'expedition_entity.freezed.dart';

part 'expedition_entity.g.dart';

@unfreezed
class ExpeditionEntity with _$ExpeditionEntity {
  factory ExpeditionEntity({
    required String no,
    required String code,
    required int area,
    required ExpeditionNameEntity name,
    required int time,
    required List<int> resource,
    required List<dynamic> reward,
    required List<int> exp,
    @JsonKey(name: 'total-num') required int totalNum,
    @JsonKey(name: 'flag-lv') required int flagLv,
  }) = _ExpeditionEntity;

  factory ExpeditionEntity.fromJson(Map<String, dynamic> json) =>
      _$ExpeditionEntityFromJson(json);
}

@unfreezed
class ExpeditionNameEntity with _$ExpeditionNameEntity {
  factory ExpeditionNameEntity({
    required String jp,
    required String ko,
    required String en,
    required String scn,
    required String tcn,
  }) = _ExpeditionNameEntity;

  factory ExpeditionNameEntity.fromJson(Map<String, dynamic> json) =>
      _$ExpeditionNameEntityFromJson(json);
}


/*
[{
    "no": "1",
    "code": "1",
    "area": 1,
    "name": {
        "jp": "練習航海",
        "ko": "연습해역",
        "en": "Practice Voyage",
        "scn": "练习航海",
        "tcn": "練習航海"
    },
    "time": 15,
    "resource": [0, 30, 0, 0],
    "reward": [[0, 0], [0, 0]],
    "exp": [10, 10],
    "total-num": 2,
    "flag-lv": 1
}, {
    "no": "2",
    "code": "2",
    "area": 1,
    "name": {
        "jp": "長距離練習航海",
        "ko": "장거리연습항해",
        "en": "Long Distance Training Voyage",
        "scn": "长距离练习航海",
        "tcn": "長距離練習航海"
    },
    "time": 30,
    "resource": [0, 100, 30, 0],
    "reward": [[1, 1], [0, 0]],
    "exp": [20, 15],
    "total-num": 4,
    "flag-lv": 2
}, {
    "no": "3",
    "code": "3",
    "area": 1,
    "name": {
        "jp": "警備任務",
        "ko": "경비임무",
        "en": "Security Tasks",
        "scn": "警备任务",
        "tcn": "警備任務"
    },
    "time": 20,
    "resource": [30, 30, 40, 0],
    "reward": [[0, 0], [0, 0]],
    "exp": [30, 30],
    "total-num": 3,
    "flag-lv": 3
}
]
 */