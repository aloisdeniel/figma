// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment(
    id: json['id'] as String,
    clientMeta: json['client_meta'],
    fileKey: json['file_key'] as String,
    parentId: json['parent_id'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    resolvedAt: json['resolved_at'] == null
        ? null
        : DateTime.parse(json['resolved_at'] as String),
    orderId: json['order_id'] as String,
  );
}

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'client_meta': instance.clientMeta,
      'file_key': instance.fileKey,
      'parent_id': instance.parentId,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'resolved_at': instance.resolvedAt?.toIso8601String(),
      'order_id': instance.orderId,
    };
