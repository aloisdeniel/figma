// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map<String, dynamic> json) {
  return Component(
    key: json['key'] as String,
    fileKey: json['file_key'] as String,
    nodeId: json['node_id'] as String,
    thumbnailUrl: json['thumbnail_url'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    containingFrame: json['containing_frame'] == null
        ? null
        : FrameInfo.fromJson(json['containing_frame'] as Map<String, dynamic>),
    containingPage: json['containing_page'],
  );
}

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'key': instance.key,
      'file_key': instance.fileKey,
      'node_id': instance.nodeId,
      'thumbnail_url': instance.thumbnailUrl,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'containing_frame': instance.containingFrame,
      'containing_page': instance.containingPage,
    };
