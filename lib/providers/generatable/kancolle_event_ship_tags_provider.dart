import 'dart:convert';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'kancolle_event_ship_tags_provider.freezed.dart';
part 'kancolle_event_ship_tags_provider.g.dart';

const kEventShipTagsUrl = "https://conntower.github.io/ooyodo/data/event_ship_tags.json";

@freezed
class EventShipTag with _$EventShipTag {
  const EventShipTag._();
  const factory EventShipTag({
    @JsonKey(name: 'color') required String colorValue,
    required Map<String, String> name,
  }) = _EventShipTag;

  get color => Color(int.parse(colorValue));

  factory EventShipTag.fromJson(Map<String, dynamic> json) =>
      _$EventShipTagFromJson(json);
}

@freezed
class EventShipTagsState with _$EventShipTagsState {
  const factory EventShipTagsState({
    required String dataVersion,
    required Map<String, EventShipTag> data,
  }) = _EventShipTagsState;

  factory EventShipTagsState.fromJson(Map<String, dynamic> json) =>
      _$EventShipTagsStateFromJson(json);
}

@riverpod
class EventShipTags extends _$EventShipTags {
  @override
  FutureOr<EventShipTagsState> build() async {
    return _fetchData();
  }

  Future<EventShipTagsState> _fetchData() async {
    final response = await http.get(Uri.parse(kEventShipTagsUrl));
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return EventShipTagsState.fromJson(data);
  }
}