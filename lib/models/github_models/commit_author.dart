import 'package:json_annotation/json_annotation.dart';

part 'commit_author.g.dart';

@JsonSerializable()
class CommitAuthor {
  String name;
  String email;
  DateTime date;

  CommitAuthor({
    this.name,
    this.email,
    this.date,
  });

  factory CommitAuthor.fromJson(Map<String, dynamic> json) =>
      _$CommitAuthorFromJson(json);
  Map<String, dynamic> toJson() => _$CommitAuthorToJson(this);
}
