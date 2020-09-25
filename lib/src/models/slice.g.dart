// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Slice _$SliceFromJson(Map<String, dynamic> json) {
  return Slice(
    id: json['id'] as String,
    name: json['name'] as String,
    visible: json['visible'] as bool,
    pluginData: json['pluginData'],
    sharedPluginData: json['sharedPluginData'],
    exportSettings: (json['exportSettings'] as List)
        ?.map((e) => e == null
            ? null
            : ExportSetting.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    absoluteBoundingBox: json['absoluteBoundingBox'] == null
        ? null
        : SizeRectangle.fromJson(
            json['absoluteBoundingBox'] as Map<String, dynamic>),
    size: json['size'] == null
        ? null
        : Vector2D.fromJson(json['size'] as Map<String, dynamic>),
    relativeTransform: (json['relativeTransform'] as List)
        ?.map((e) => (e as List)?.map((e) => e as num)?.toList())
        ?.toList(),
  );
}

Map<String, dynamic> _$SliceToJson(Slice instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'visible': instance.visible,
      'pluginData': instance.pluginData,
      'sharedPluginData': instance.sharedPluginData,
      'exportSettings': instance.exportSettings,
      'absoluteBoundingBox': instance.absoluteBoundingBox,
      'size': instance.size,
      'relativeTransform': instance.relativeTransform,
    };
