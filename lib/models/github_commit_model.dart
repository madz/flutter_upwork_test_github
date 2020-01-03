// To parse this JSON data, do
//
//     final gitHubCommit = gitHubCommitFromJson(jsonString);

import 'dart:convert';

List<GitHubCommitModel> gitHubCommitFromJson(String str) =>
    List<GitHubCommitModel>.from(
        json.decode(str).map((x) => GitHubCommitModel.fromJson(x)));

String gitHubCommitToJson(List<GitHubCommitModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GitHubCommitModel {
  Commit commit;
  GitHubCommitAuthor author;
  GitHubCommitAuthor committer;

  GitHubCommitModel({
    this.commit,
    this.author,
    this.committer,
  });

  factory GitHubCommitModel.fromJson(Map<String, dynamic> json) =>
      GitHubCommitModel(
        commit: Commit.fromJson(json["commit"]),
        author: GitHubCommitAuthor.fromJson(json["author"]),
        committer: GitHubCommitAuthor.fromJson(json["committer"]),
      );

  Map<String, dynamic> toJson() => {
        "commit": commit.toJson(),
        "author": author.toJson(),
        "committer": committer.toJson(),
      };
}

class GitHubCommitAuthor {
  String avatarUrl;

  GitHubCommitAuthor({
    this.avatarUrl,
  });

  factory GitHubCommitAuthor.fromJson(Map<String, dynamic> json) =>
      GitHubCommitAuthor(
        avatarUrl: json["avatar_url"],
      );

  Map<String, dynamic> toJson() => {
        "avatar_url": avatarUrl,
      };
}

class Commit {
  CommitAuthor author;
  CommitAuthor committer;
  String message;

  Commit({
    this.author,
    this.committer,
    this.message,
  });

  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
        author: CommitAuthor.fromJson(json["author"]),
        committer: CommitAuthor.fromJson(json["committer"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "author": author.toJson(),
        "committer": committer.toJson(),
        "message": message,
      };
}

class CommitAuthor {
  String name;
  String email;
  DateTime date;

  CommitAuthor({
    this.name,
    this.email,
    this.date,
  });

  factory CommitAuthor.fromJson(Map<String, dynamic> json) => CommitAuthor(
        name: json["name"],
        email: json["email"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "date": date.toIso8601String(),
      };
}

