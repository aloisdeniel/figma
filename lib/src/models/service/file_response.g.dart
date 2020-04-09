// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileResponse _$FileResponseFromJson(Map<String, dynamic> json) {
  return FileResponse(
    name: json['name'] as String,
    role: json['role'] as String,
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    thumbnailUrl: json['thumbnailUrl'] as String,
    version: json['version'] as String,
    document: json['document'] == null
        ? null
        : Document.fromJson(json['document'] as Map<String, dynamic>),
    components: (json['components'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Component.fromJson(e as Map<String, dynamic>)),
    ),
    schemaVersion: json['schemaVersion'] as int,
    styles: (json['styles'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Style.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$FileResponseToJson(FileResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'lastModified': instance.lastModified?.toIso8601String(),
      'thumbnailUrl': instance.thumbnailUrl,
      'version': instance.version,
      'document': instance.document,
      'components': instance.components,
      'schemaVersion': instance.schemaVersion,
      'styles': instance.styles,
    };
