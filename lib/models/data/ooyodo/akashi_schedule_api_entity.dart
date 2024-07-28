import 'package:freezed_annotation/freezed_annotation.dart';

import 'akashi_schedule.dart';

part 'akashi_schedule_api_entity.freezed.dart';

part 'akashi_schedule_api_entity.g.dart';

/*
API sample:
{
  "data": {
    "data_version": "1.0.0",
    "items": [
      {
        "id": 41,
        "improvement": [
          {
            "upgrade": {
              "id": 309,
              "lv": 0
            },
            "req": [
              {
                "ship": [581, 690, 586],
                "day": "1001111"
              },
              {
                "ship": [107],
                "day": "0011100"
              }
            ],
            "resource": {
              "base": [30, 50, 40, 20],
              "extra": [
                {
                  "dm": [3, 3],
                  "im": [1, 2],
                  "slot": {
                    "41": 1
                  }
                },
                {
                  "dm": [3, 6],
                  "im": [2, 4],
                  "slot": {
                    "41": 1
                  }
                },
                {
                  "dm": [9, 18],
                  "im": [4, 8],
                  "slot": {
                    "41": 2
                  },
                  "use": {
                    "78": 1,
                    "94": 2
                  }
                }
              ]
            }
          }
        ]
      }
    ]
  },
  "meta": {
    "version": "1.0.0",
    "generated_at": "2024-01-01T00:00:00Z"
  }
}
*/

@unfreezed
class AkashiScheduleApiEntity with _$AkashiScheduleApiEntity {
  factory AkashiScheduleApiEntity({
    AkashiSchedule? data,
    MetaMsg? meta,
  }) = _AkashiScheduleApiEntity;

  factory AkashiScheduleApiEntity.fromJson(Map<String, dynamic> json) =>
      _$AkashiScheduleApiEntityFromJson(json);
}

@unfreezed
class MetaMsg with _$MetaMsg {
  @Assert("version == '1.0.0'", "API version is invalid, please update")
  factory MetaMsg({
    String? version,
    @JsonKey(name: 'generated_at') String? generatedAt,
  }) = _MetaMsg;

  factory MetaMsg.fromJson(Map<String, dynamic> json) =>
      _$MetaMsgFromJson(json);
}
