// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapData _$$_MapDataFromJson(Map<String, dynamic> json) => _$_MapData(
      id: json['id'] as int,
      name: json['name'] as String,
      routes: (json['routes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Route.fromJson(e as Map<String, dynamic>)),
      ),
      cells: (json['cells'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Cell.fromJson(e as Map<String, dynamic>)),
      ),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_MapDataToJson(_$_MapData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'routes': instance.routes,
      'cells': instance.cells,
      'image': instance.image,
    };

_$_Route _$$_RouteFromJson(Map<String, dynamic> json) => _$_Route(
      from: json['from'],
      to: json['to'],
    );

Map<String, dynamic> _$$_RouteToJson(_$_Route instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };

_$_Cell _$$_CellFromJson(Map<String, dynamic> json) => _$_Cell(
      name: json['name'] as String,
      type: json['type'],
      boss: json['boss'] as bool,
      routes: (json['routes'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_CellToJson(_$_Cell instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'boss': instance.boss,
      'routes': instance.routes,
    };
