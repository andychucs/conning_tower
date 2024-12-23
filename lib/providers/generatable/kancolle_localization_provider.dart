import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/data/kcdata/quest_data.dart';
import 'package:conning_tower/models/data/l10n/kancolle_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../constants.dart';
import '../../helper.dart';

part 'kancolle_localization_provider.freezed.dart';
part 'kancolle_localization_provider.g.dart';

const kSlotItemLocalizationUrl =
    'https://conntower.github.io/ooyodo/data/slotitem_l10n.json';
const kUseItemInImproveLocalizationUrl =
    'https://conntower.github.io/ooyodo/data/useitem_in_improve_l10n.json';
const kEquipmentTypeLocalizationUrl =
    'https://conntower.github.io/ooyodo/data/equipment_type_l10n_without_id.json';

@freezed
class KancolleLocalizationState with _$KancolleLocalizationState {
  const factory KancolleLocalizationState({
    required Locale locale,
    KancolleLocalizationData? data,
  }) = _KancolleLocalizationState;
}

@riverpod
class KancolleLocalization extends _$KancolleLocalization {
  File get slotItemLocalFile => File(pathUtil.localL10nSlotItemPath);
  File get useItemInImproveLocalFile =>
      File(pathUtil.localL10nUseItemInImprovePath);
  File get equipmentTypeWithoutIdLocalFile =>
      File(pathUtil.localL10nEquipmentTypeWithoutIdPath);

  @override
  Future<KancolleLocalizationState> build(Locale locale) async {
    return _loadData(locale);
  }

  KancolleLocalizationData get data =>
      state.value?.data ?? const KancolleLocalizationData(version: '');

  Future<String> fetchDataVersion() async {
    try {
      final res = await http.get(Uri.parse(kOoyodoDataVersion));
      return jsonDecode(res.body)['version'] as String;
    } catch (e) {
      return '';
    }
  }

  Future<KancolleLocalizationState> _loadData(Locale locale) async {
    try {
      final slotItemRaw = await slotItemLocalFile.readAsString();
      final slotItemJson = jsonDecode(slotItemRaw);

      final useItemInImproveRaw =
          await useItemInImproveLocalFile.readAsString();
      final useItemInImproveJson = jsonDecode(useItemInImproveRaw);

      final equipmentTypeWithoutIdRaw =
          await equipmentTypeWithoutIdLocalFile.readAsString();
      final equipmentTypeWithoutIdJson = jsonDecode(equipmentTypeWithoutIdRaw);

      final data = covertData(locale, slotItemJson, useItemInImproveJson,
          equipmentTypeWithoutIdJson);
      final dataVersion = await fetchDataVersion();
      if (dataVersion != '') {
        if (dataVersion != data.data?.version) {
          return _fetchData(locale);
        }
      }
      return data;
    } catch (e) {
      return _fetchData(locale);
    }
  }

  KancolleLocalizationState covertData(
      Locale locale,
      Map<String, dynamic> slotItemData,
      Map<String, dynamic> useItemInImproveData,
      Map<String, dynamic> equipmentTypeWithoutIdData) {
    Map<int, String> equipmentMap = {};
    Map<String, String> equipmentL10nMap = {};
    Map<int, String> itemInImproveMap = {};
    Map<String, String> itemInImproveL10nMap = {};
    final dataVersion = slotItemData['data_version'] as String;
    final slotItems = slotItemData['data'] as Map<String, dynamic>;
    final useItemInImprove =
        useItemInImproveData['data'] as Map<String, dynamic>;

    final languageCode = getLanguageCode(locale);

    slotItems.forEach((id, translate) {
      equipmentMap[int.parse(id)] = translate[languageCode] ?? '';
      equipmentL10nMap[translate['ja']] = translate[languageCode] ?? '';
    });

    useItemInImprove.forEach((id, translate) {
      itemInImproveMap[int.parse(id)] = translate[languageCode] ?? '';
      itemInImproveL10nMap[translate['ja']] = translate[languageCode] ?? '';
    });

    final equipmentTypeTranslate =
        equipmentTypeWithoutIdData['data'] as Map<String, dynamic>;
    final Map<String, String> equipmentTypeL10nMap = equipmentTypeTranslate
        .map((key, value) => MapEntry(key, value[languageCode] ?? ''));

    return KancolleLocalizationState(
      locale: locale,
      data: KancolleLocalizationData(
        version: dataVersion,
        equipment: equipmentMap,
        equipmentLocal: equipmentL10nMap,
        itemInImprove: itemInImproveMap,
        itemInImproveLocal: itemInImproveL10nMap,
        equipmentTypeLocal: equipmentTypeL10nMap,
      ),
    );
  }

  Future<KancolleLocalizationState> _fetchData(Locale locale) async {
    final slotItemResponse =
        await http.get(Uri.parse(kSlotItemLocalizationUrl));
    final slotItemJson = jsonDecode(slotItemResponse.body);
    _saveLocalData(slotItemLocalFile, slotItemJson);

    final useItemInImproveResponse =
        await http.get(Uri.parse(kUseItemInImproveLocalizationUrl));
    final useItemInImproveJson = jsonDecode(useItemInImproveResponse.body);
    _saveLocalData(useItemInImproveLocalFile, useItemInImproveJson);

    final equipmentTypeWithoutIdResponse =
        await http.get(Uri.parse(kEquipmentTypeLocalizationUrl));
    final equipmentTypeWithoutIdJson =
        jsonDecode(equipmentTypeWithoutIdResponse.body);
    _saveLocalData(equipmentTypeWithoutIdLocalFile, equipmentTypeWithoutIdJson);

    return covertData(
        locale, slotItemJson, useItemInImproveJson, equipmentTypeWithoutIdJson);
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

  Future<void> _saveLocalData(File file, Map data) async {
    final directory = file.parent;
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    await file.writeAsString(jsonEncode(data));
  }

  Future<dynamic> _loadLocalData(File file) async {
    if (file.existsSync()) {
      final contents = await file.readAsString();
      final json = jsonDecode(contents);
      if (file.path.contains("translate")) {
        return KancolleLocalizationData.fromJson(json);
      } else if (file.path.contains("quest")) {
        return {
          for (final quest in json) quest['id']: QuestData.fromJson(quest)
        };
      }
    }
    return null;
  }
}
