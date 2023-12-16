import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_hub_refs_entity.freezed.dart';

part 'git_hub_refs_entity.g.dart';

@unfreezed
class GitHubRefsEntity with _$GitHubRefsEntity {
  factory GitHubRefsEntity({
    String? ref,
    @JsonKey(name: 'node_id') String? nodeId,
    String? url,
    GitHubRefsObjectEntity? object,
  }) = _GitHubRefsEntity;

  factory GitHubRefsEntity.fromJson(Map<String, dynamic> json) =>
      _$GitHubRefsEntityFromJson(json);
}

@unfreezed
class GitHubRefsObjectEntity with _$GitHubRefsObjectEntity {
  factory GitHubRefsObjectEntity({
    String? sha,
    String? type,
    String? url,
  }) = _GitHubRefsObjectEntity;

  factory GitHubRefsObjectEntity.fromJson(Map<String, dynamic> json) =>
      _$GitHubRefsObjectEntityFromJson(json);
}
