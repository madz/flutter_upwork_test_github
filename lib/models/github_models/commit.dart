import 'package:json_annotation/json_annotation.dart';

import 'commit_author.dart';

part 'commit.g.dart';

@JsonSerializable()
class Commit {
  CommitAuthor author;
  CommitAuthor committer;
  String message;

  Commit({
    this.author,
    this.committer,
    this.message,
  });

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);
  Map<String, dynamic> toJson() => _$CommitToJson(this);
}
