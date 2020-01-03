// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitAuthor _$CommitAuthorFromJson(Map<String, dynamic> json) {
  return CommitAuthor(
    name: json['name'] as String,
    email: json['email'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$CommitAuthorToJson(CommitAuthor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'date': instance.date?.toIso8601String(),
    };
