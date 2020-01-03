// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return Commit(
    author: json['author'] == null
        ? null
        : CommitAuthor.fromJson(json['author'] as Map<String, dynamic>),
    committer: json['committer'] == null
        ? null
        : CommitAuthor.fromJson(json['committer'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$CommitToJson(Commit instance) => <String, dynamic>{
      'author': instance.author,
      'committer': instance.committer,
      'message': instance.message,
    };
