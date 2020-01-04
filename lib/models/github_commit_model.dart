import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'github_models/commit.dart';
import 'github_models/github_commit_author.dart';

part 'github_commit_model.g.dart';

List<GitHubCommitModel> gitHubCommitFromJson(String str) =>
    List<GitHubCommitModel>.from(
        json.decode(str).map((x) => GitHubCommitModel.fromJson(x)));

String gitHubCommitToJson(List<GitHubCommitModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class GitHubCommitModel {
  Commit commit;
  GitHubCommitAuthor author;
  GitHubCommitAuthor committer;
  String htmlUrl;

  GitHubCommitModel({
    this.commit,
    this.author,
    this.committer,
    this.htmlUrl,
  });

  factory GitHubCommitModel.fromJson(Map<String, dynamic> json) =>
      _$GitHubCommitModelFromJson(json);
  Map<String, dynamic> toJson() => _$GitHubCommitModelToJson(this);
}
