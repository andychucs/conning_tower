import 'dart:convert';

import 'package:conning_tower/models/data/kancolle_calc_net/deck_builder_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("deck builder", () {
    var json = jsonDecode('''
{"version": 4,"hqlv":120,"f1":{"s1":{"id":916,"lv":167,"luck":24,"items":{"i1":{"id":465,"rf":0},"i2":{"id":276,"rf":6},"i3":{"id":216,"rf":0,"mas":7},"i4":{"id":490,"rf":0,"mas":7},"i5":{"id":365,"rf":0},"ix":{"id":460,"rf":0}}}},"f2":{"s1":{"id":418,"lv":98,"luck":20,"items":{"i1":{"id":68,"rf":0},"i2":{"id":68,"rf":0},"i3":{"id":68,"rf":0}}},"s2":{"id":366,"lv":82,"luck":16,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s3":{"id":221,"lv":77,"luck":12,"items":{"i1":{"id":75,"rf":0},"i2":{"id":90,"rf":0},"i3":{"id":90,"rf":0}}},"s4":{"id":363,"lv":82,"luck":30,"items":{"i1":{"id":315,"rf":0}}},"s5":{"id":472,"lv":64,"luck":13,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0}}},"s6":{"id":710,"lv":32,"luck":7,"items":{}}},"f3":{"s1":{"id":718,"lv":66,"luck":10,"items":{"i1":{"id":68,"rf":0},"i2":{"id":68,"rf":0},"i3":{"id":68,"rf":0}}},"s2":{"id":434,"lv":95,"luck":14,"items":{"i1":{"id":68,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s3":{"id":258,"lv":72,"luck":20,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s4":{"id":259,"lv":85,"luck":12,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s5":{"id":309,"lv":86,"luck":14,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s6":{"id":160,"lv":78,"luck":13,"items":{"i1":{"id":303,"rf":0},"i2":{"id":303,"rf":0}}}},"f4":{"s1":{"id":308,"lv":83,"luck":12,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s2":{"id":474,"lv":93,"luck":12,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0}}},"s3":{"id":702,"lv":64,"luck":18,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s4":{"id":435,"lv":96,"luck":13,"items":{"i1":{"id":68,"rf":0},"i2":{"id":75,"rf":0},"i3":{"id":75,"rf":0}}},"s5":{"id":261,"lv":81,"luck":12,"items":{"i1":{"id":75,"rf":0},"i2":{"id":75,"rf":0}}},"s6":{"id":487,"lv":99,"luck":17,"items":{"i1":{"id":193,"rf":0},"i2":{"id":68,"rf":0},"i3":{"id":68,"rf":0}}}},"a1":{"items": {"i1":{"id":484,"rf":1,"mas":4},"i2":{"id":444,"rf":0,"mas":2},"i3":{"id":404,"rf":0,"mas":6},"i4":{"id":403,"rf":0,"mas":3}},"mode":1},"a2":{"items": {"i1":{"id":269,"rf":0,"mas":7},"i2":{"id":269,"rf":0,"mas":7},"i3":{"id":269,"rf":0,"mas":7},"i4":{"id":269,"rf":2,"mas":3}},"mode":1},"a3":{"items": {},"mode":0},"a4":{"items": {"i1":{"id":218,"rf":5,"mas":7},"i2":{"id":218,"rf":0,"mas":7},"i3":{"id":218,"rf":0,"mas":7},"i4":{"id":221,"rf":0,"mas":7}},"mode":1}}
''');

    var data = DeckBuilderEntity.fromJson(json);

    expect(data.f1?.s1?.id, 916);

  });
}