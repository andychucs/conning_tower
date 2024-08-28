import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'req_map_next_entity.dart';
export 'req_map_start_entity.dart';

part 'map.freezed.dart';
part 'map.g.dart';

/*
apiLostKind:
1=「空襲により備蓄資源に損害を受けました！」
2=「空襲により備蓄資源に損害を受け、基地航空隊にも地上撃破の損害が発生しました！」
3=「空襲により基地航空隊に地上撃破の損害が発生しました！」
4=「空襲による基地の損害はありません。」
 */
@freezed
class AirbaseDefenseInfo with _$AirbaseDefenseInfo {
  const factory AirbaseDefenseInfo({
    int? apiLostKind,
    @JsonKey(name: 'api_m2') int? apiM2,
  }) = _AirbaseDefenseInfo;

  factory AirbaseDefenseInfo.fromJson(Map<String, dynamic> json) =>
      _$AirbaseDefenseInfoFromJson(json);
}
