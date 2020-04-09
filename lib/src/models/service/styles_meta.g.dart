// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'styles_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StylesMeta _$StylesMetaFromJson(Map<String, dynamic> json) {
  return StylesMeta(
    styles: (json['styles'] as List)
        ?.map(
            (e) => e == null ? null : Style.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cursor: json['cursor'] == null
        ? null
        : Cursor.fromJson(json['cursor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StylesMetaToJson(StylesMeta instance) =>
    <String, dynamic>{
      'styles': instance.styles,
      'cursor': instance.cursor,
    };
