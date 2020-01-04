// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_commit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubCommitModel _$GitHubCommitModelFromJson(Map<String, dynamic> json) {
  return GitHubCommitModel(
    commit: json['commit'] == null
        ? null
        : Commit.fromJson(json['commit'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : GitHubCommitAuthor.fromJson(json['author'] as Map<String, dynamic>),
    committer: json['committer'] == null
        ? null
        : GitHubCommitAuthor.fromJson(
            json['committer'] as Map<String, dynamic>),
    htmlUrl: json['htmlUrl'] as String,
  );
}

Map<String, dynamic> _$GitHubCommitModelToJson(GitHubCommitModel instance) =>
    <String, dynamic>{
      'commit': instance.commit,
      'author': instance.author,
      'committer': instance.committer,
      'htmlUrl': instance.htmlUrl,
    };
