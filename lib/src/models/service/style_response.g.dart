// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StyleResponse _$StyleResponseFromJson(Map<String, dynamic> json) {
  return StyleResponse(
    status: json['status'] as int,
    error: json['error'] as bool,
    style: json['meta'] == null
        ? null
        : Style.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StyleResponseToJson(StyleResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'meta': instance.style,
    };
