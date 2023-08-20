import 'package:freezed_annotation/freezed_annotation.dart';

part 'useitem.freezed.dart';
part 'useitem.g.dart';

@freezed
class UseItem with _$UseItem {
  factory UseItem({
    required int id,
    @JsonKey(name: 'usetype') required int useType,
    required int category,
    required String name,
    required List<String> description,
    required int price,
    required String chineseName,
    required String chineseDescription,
  }) = _UseItem;

  factory UseItem.fromJson(Map<String, dynamic> json) =>
      _$UseItemFromJson(json);
}
