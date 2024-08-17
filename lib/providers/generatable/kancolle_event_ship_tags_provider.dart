import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../helper.dart';

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

  get nameJa => name['ja'];

  get nameEn => name['en'];

  get nameSc => name['sc'];

  get nameKo => name['ko'];

  get nameTc => name['tc'];

  nameLocal(Locale locale) => name[getLanguageCode(locale)] ?? nameJa;

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
    return _loadData();
  }

  Future<EventShipTagsState> _loadData() async {
    // asset: assets/resources/json/event_ship_tags.json
    final jsonString =
        await rootBundle.loadString('assets/resources/json/event_ship_tags.json');
    return EventShipTagsState.fromJson(json.decode(jsonString));
  }

  Future<EventShipTagsState> _fetchData() async {
    log("fetching $kEventShipTagsUrl");
    final response = await http.get(Uri.parse(kEventShipTagsUrl));
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return EventShipTagsState.fromJson(data);
  }
}