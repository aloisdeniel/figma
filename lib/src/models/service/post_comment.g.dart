// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostComment _$PostCommentFromJson(Map<String, dynamic> json) {
  return PostComment(
    message: json['message'] as String,
    clientMeta: json['client_meta'],
    commentId: json['comment_id'] as String,
  );
}

Map<String, dynamic> _$PostCommentToJson(PostComment instance) =>
    <String, dynamic>{
      'message': instance.message,
      'client_meta': instance.clientMeta,
      'comment_id': instance.commentId,
    };
