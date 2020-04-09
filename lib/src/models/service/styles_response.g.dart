// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'styles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StylesResponse _$StylesResponseFromJson(Map<String, dynamic> json) {
  return StylesResponse(
    status: json['status'] as int,
    error: json['error'] as bool,
    meta: json['meta'] == null
        ? null
        : StylesMeta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StylesResponseToJson(StylesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'meta': instance.meta,
    };
