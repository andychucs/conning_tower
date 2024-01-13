import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/models/data/kcdata/quest_data.dart';
import 'package:conning_tower/models/data/l10n/kancolle_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'kancolle_localization_provider.freezed.dart';
part 'kancolle_localization_provider.g.dart';

const _kcdataUrl = 'https://andychucs.github.io/kcdata/json/';

@freezed
class KancolleLocalizationState with _$KancolleLocalizationState {
  const factory KancolleLocalizationState({
    required Locale locale,
    KancolleLocalizationData? data,
  }) = _KancolleLocalizationState;
}


@riverpod
class KancolleLocalization extends _$KancolleLocalization {

  @override
  KancolleLocalizationState build(Locale locale) {
    return KancolleLocalizationState(locale: locale);
  }

  Future<File> localFile(String file) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    return File("$path/l10n/$file");
  }

  Future<void> fetchData({Locale? locale}) async {
    Locale currLocale = state.locale;
    if (locale != null) currLocale = locale;
    final localeCode = "${currLocale.languageCode}${currLocale.scriptCode == null ? '' : '_${currLocale.scriptCode}'}";
    log("localeCode:$localeCode");
    final translateFileName = 'translate_$localeCode.json';
    final questFilename = 'quest_$localeCode.json';
    final translateUrl = '$_kcdataUrl$translateFileName';
    final questUrl = '$_kcdataUrl$questFilename';
    // KancolleLocalizationData data = await fetchTranslate(translateUrl);
    // data = data.copyWith(quest: await fetchQuestData(questUrl));
    // state = state.copyWith(data: data);
  }

  Future<KancolleLocalizationData> fetchTranslate(String url) async {
    final response = await http.get(Uri.parse(url));
    return KancolleLocalizationData.fromJson(jsonDecode(response.body));
  }

  Future<Map<int, QuestData>> fetchQuestData(String url) async {
    final response = await http.get(Uri.parse(url));
    return {
      for (final quest in jsonDecode(response.body))
        quest['id']: QuestData.fromJson(quest)
    };
  }

  Future<void> _saveLocalData(File file, Object object) async {
    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    await file.writeAsString(jsonEncode(object));
  }

  Future<dynamic> _loadLocalData(File file) async {
    if (file.existsSync()) {
      final contents = await file.readAsString();
      final json = jsonDecode(contents);
      if (file.path.contains("translate")) {
        return KancolleLocalizationData.fromJson(json);
      }
      else if(file.path.contains("quest")) {
        return {
          for (final quest in json)
            quest['id']: QuestData.fromJson(quest)
        };
      }
    }
    return null;
  }

}