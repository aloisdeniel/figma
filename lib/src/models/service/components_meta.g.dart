// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentsMeta _$ComponentsMetaFromJson(Map<String, dynamic> json) {
  return ComponentsMeta(
    components: (json['components'] as List)
        ?.map((e) =>
            e == null ? null : Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cursor: json['cursor'] == null
        ? null
        : Cursor.fromJson(json['cursor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ComponentsMetaToJson(ComponentsMeta instance) =>
    <String, dynamic>{
      'components': instance.components,
      'cursor': instance.cursor,
    };
