import 'dart:convert';

import 'package:conning_tower/models/data/kcsapi/kcsapi.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(ReqKousyouDestroyshipEntity.source, () {
    var json = jsonDecode('''
{"api_result":1,"api_result_msg":"\u6210\u529f","api_data":{"api_material":[2972,2974,2984,2970]}}
    ''');

    final data = ReqKousyouDestroyshipEntity.fromJson(json);

    expect(data, isNotNull);
  });
}
