// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentsResponse _$ComponentsResponseFromJson(Map<String, dynamic> json) {
  return ComponentsResponse(
    status: json['status'] as int,
    error: json['error'] as bool,
    meta: json['meta'] == null
        ? null
        : ComponentsMeta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ComponentsResponseToJson(ComponentsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'meta': instance.meta,
    };
