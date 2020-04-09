// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodesResponse _$NodesResponseFromJson(Map<String, dynamic> json) {
  return NodesResponse(
    name: json['name'] as String,
    role: json['role'] as String,
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    thumbnailUrl: json['thumbnailUrl'] as String,
    err: json['err'] as String,
    nodes: (json['nodes'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k,
          e == null ? null : FileResponse.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$NodesResponseToJson(NodesResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'lastModified': instance.lastModified?.toIso8601String(),
      'thumbnailUrl': instance.thumbnailUrl,
      'err': instance.err,
      'nodes': instance.nodes,
    };
