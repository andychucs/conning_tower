// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String,
      title: json['title'] as String,
      time: json['time'] as String,
      description: json['description'] as String,
      tag: json['tag'] as String,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time': instance.time,
      'description': instance.description,
      'tag': instance.tag,
    };

_$_Tasks _$$_TasksFromJson(Map<String, dynamic> json) => _$_Tasks(
      items: (json['items'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TasksToJson(_$_Tasks instance) => <String, dynamic>{
      'items': instance.items,
    };
