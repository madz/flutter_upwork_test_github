import 'package:json_annotation/json_annotation.dart';

part 'github_commit_author.g.dart';

@JsonSerializable()
class GitHubCommitAuthor {
  String avatarUrl;

  GitHubCommitAuthor({
    this.avatarUrl,
  });

  factory GitHubCommitAuthor.fromJson(Map<String, dynamic> json) =>
      _$GitHubCommitAuthorFromJson(json);
  Map<String, dynamic> toJson() => _$GitHubCommitAuthorToJson(this);
}
