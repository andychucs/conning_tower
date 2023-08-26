// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ship _$$_ShipFromJson(Map<String, dynamic> json) => _$_Ship(
      id: json['id'] as int,
      sortNo: json['sort_no'] as int?,
      name: json['name'] as String?,
      yomi: json['yomi'] as String?,
      stype: json['stype'] as int?,
      ctype: json['ctype'] as int?,
      cnum: json['cnum'] as int?,
      backs: json['backs'] as int?,
      afterLv: json['after_lv'] as int?,
      afterShipId: json['after_ship_id'] as int?,
      getMes: json['get_mes'] as String?,
      voiceF: json['voice_f'] as int?,
      filename: json['filename'] as String,
      fileVersion: (json['file_version'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      bookTableId: (json['book_table_id'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      bookSinfo: json['book_sinfo'] as String?,
      stats: ShipStats.fromJson(json['stats'] as Map<String, dynamic>),
      graph: ShipGraph.fromJson(json['graph'] as Map<String, dynamic>),
      wikiId: json['wiki_id'] as String?,
      chineseName: json['chinese_name'] as String?,
      canDrop: json['can_drop'] as bool,
      canConstruct: json['can_construct'] as bool,
    );

Map<String, dynamic> _$$_ShipToJson(_$_Ship instance) => <String, dynamic>{
      'id': instance.id,
      'sort_no': instance.sortNo,
      'name': instance.name,
      'yomi': instance.yomi,
      'stype': instance.stype,
      'ctype': instance.ctype,
      'cnum': instance.cnum,
      'backs': instance.backs,
      'after_lv': instance.afterLv,
      'after_ship_id': instance.afterShipId,
      'get_mes': instance.getMes,
      'voice_f': instance.voiceF,
      'filename': instance.filename,
      'file_version': instance.fileVersion,
      'book_table_id': instance.bookTableId,
      'book_sinfo': instance.bookSinfo,
      'stats': instance.stats,
      'graph': instance.graph,
      'wiki_id': instance.wikiId,
      'chinese_name': instance.chineseName,
      'can_drop': instance.canDrop,
      'can_construct': instance.canConstruct,
    };

_$_ShipStats _$$_ShipStatsFromJson(Map<String, dynamic> json) => _$_ShipStats(
      taik: (json['taik'] as List<dynamic>?)?.map((e) => e as int).toList(),
      souk: (json['souk'] as List<dynamic>?)?.map((e) => e as int).toList(),
      houg: (json['houg'] as List<dynamic>?)?.map((e) => e as int).toList(),
      raig: (json['raig'] as List<dynamic>?)?.map((e) => e as int).toList(),
      tyku: (json['tyku'] as List<dynamic>?)?.map((e) => e as int).toList(),
      luck: (json['luck'] as List<dynamic>?)?.map((e) => e as int).toList(),
      soku: json['soku'] as int?,
      leng: json['leng'] as int?,
      kaih: json['kaih'] as int?,
      tais: json['tais'] as int?,
      slotNum: json['slot_num'] as int?,
      maxEq: (json['max_eq'] as List<dynamic>?)?.map((e) => e as int).toList(),
      afterFuel: json['after_fuel'] as int?,
      afterBull: json['after_bull'] as int?,
      fuelMax: json['fuel_max'] as int?,
      bullMax: json['bull_max'] as int?,
      broken: (json['broken'] as List<dynamic>?)?.map((e) => e as int).toList(),
      powUp: (json['pow_up'] as List<dynamic>?)?.map((e) => e as int).toList(),
      buildTime: json['build_time'] as int?,
    );

Map<String, dynamic> _$$_ShipStatsToJson(_$_ShipStats instance) =>
    <String, dynamic>{
      'taik': instance.taik,
      'souk': instance.souk,
      'houg': instance.houg,
      'raig': instance.raig,
      'tyku': instance.tyku,
      'luck': instance.luck,
      'soku': instance.soku,
      'leng': instance.leng,
      'kaih': instance.kaih,
      'tais': instance.tais,
      'slot_num': instance.slotNum,
      'max_eq': instance.maxEq,
      'after_fuel': instance.afterFuel,
      'after_bull': instance.afterBull,
      'fuel_max': instance.fuelMax,
      'bull_max': instance.bullMax,
      'broken': instance.broken,
      'pow_up': instance.powUp,
      'build_time': instance.buildTime,
    };

_$_ShipGraph _$$_ShipGraphFromJson(Map<String, dynamic> json) => _$_ShipGraph(
      bokoN: (json['boko_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      bokoD: (json['boko_d'] as List<dynamic>?)?.map((e) => e as int).toList(),
      kaisyuN:
          (json['kaisyu_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      kaisyuD:
          (json['kaisyu_d'] as List<dynamic>?)?.map((e) => e as int).toList(),
      kaizoN:
          (json['kaizo_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      kaizoD:
          (json['kaizo_d'] as List<dynamic>?)?.map((e) => e as int).toList(),
      mapN: (json['map_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      mapD: (json['map_d'] as List<dynamic>?)?.map((e) => e as int).toList(),
      ensyufN:
          (json['ensyuf_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      ensyufD:
          (json['ensyuf_d'] as List<dynamic>?)?.map((e) => e as int).toList(),
      ensyueN:
          (json['ensyue_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      battleN:
          (json['battle_n'] as List<dynamic>?)?.map((e) => e as int).toList(),
      battleD:
          (json['battle_d'] as List<dynamic>?)?.map((e) => e as int).toList(),
      wedA: (json['wed_a'] as List<dynamic>?)?.map((e) => e as int).toList(),
      wedB: (json['wed_b'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_ShipGraphToJson(_$_ShipGraph instance) =>
    <String, dynamic>{
      'boko_n': instance.bokoN,
      'boko_d': instance.bokoD,
      'kaisyu_n': instance.kaisyuN,
      'kaisyu_d': instance.kaisyuD,
      'kaizo_n': instance.kaizoN,
      'kaizo_d': instance.kaizoD,
      'map_n': instance.mapN,
      'map_d': instance.mapD,
      'ensyuf_n': instance.ensyufN,
      'ensyuf_d': instance.ensyufD,
      'ensyue_n': instance.ensyueN,
      'battle_n': instance.battleN,
      'battle_d': instance.battleD,
      'wed_a': instance.wedA,
      'wed_b': instance.wedB,
    };
