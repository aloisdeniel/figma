// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paint _$PaintFromJson(Map<String, dynamic> json) {
  return Paint(
    type: _$enumDecodeNullable(_$PaintTypeEnumMap, json['type']),
    visible: json['visible'] as bool,
    opacity: (json['opacity'] as num)?.toDouble(),
    color: json['color'] == null
        ? null
        : Color.fromJson(json['color'] as Map<String, dynamic>),
    blendMode: _$enumDecodeNullable(_$BlendModeEnumMap, json['blendMode']),
    gradientHandlePositions: (json['gradientHandlePositions'] as List)
        ?.map((e) =>
            e == null ? null : Vector2D.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gradientStops: (json['gradientStops'] as List)
        ?.map((e) =>
            e == null ? null : ColorStop.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    scaleMode: _$enumDecodeNullable(_$ScaleModeEnumMap, json['scaleMode']),
    imageTransform: (json['imageTransform'] as List)
        ?.map((e) => (e as List)?.map((e) => e as num)?.toList())
        ?.toList(),
    scalingFactor: json['scalingFactor'] as num,
    imageRef: json['imageRef'] as String,
    gifRef: json['gifRef'] as String,
  );
}

Map<String, dynamic> _$PaintToJson(Paint instance) => <String, dynamic>{
      'type': _$PaintTypeEnumMap[instance.type],
      'visible': instance.visible,
      'opacity': instance.opacity,
      'color': instance.color,
      'blendMode': _$BlendModeEnumMap[instance.blendMode],
      'gradientHandlePositions': instance.gradientHandlePositions,
      'gradientStops': instance.gradientStops,
      'scaleMode': _$ScaleModeEnumMap[instance.scaleMode],
      'imageTransform': instance.imageTransform,
      'scalingFactor': instance.scalingFactor,
      'imageRef': instance.imageRef,
      'gifRef': instance.gifRef,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$PaintTypeEnumMap = {
  PaintType.solid: 'SOLID',
  PaintType.gradientLinear: 'GRADIENT_LINEAR',
  PaintType.gradientRadial: 'GRADIENT_RADIAL',
  PaintType.gradientAngular: 'GRADIENT_ANGULAR',
  PaintType.gradientDiamond: 'GRADIENT_DIAMOND',
  PaintType.image: 'IMAGE',
  PaintType.emoji: 'EMOJI',
};

const _$BlendModeEnumMap = {
  BlendMode.passThrough: 'PASS_THROUGH',
  BlendMode.normal: 'NORMAL',
  BlendMode.darken: 'DARKEN',
  BlendMode.multiply: 'MULTIPLY',
  BlendMode.linearBurn: 'LINEAR_BURN',
  BlendMode.colorBurn: 'COLOR_BURN',
  BlendMode.lighten: 'LIGHTEN',
  BlendMode.screen: 'SCREEN',
  BlendMode.linearDodge: 'LINEAR_DODGE',
  BlendMode.colorDodge: 'COLOR_DODGE',
  BlendMode.overlay: 'OVERLAY',
  BlendMode.softLight: 'SOFT_LIGHT',
  BlendMode.hardLight: 'HARD_LIGHT',
  BlendMode.difference: 'DIFFERENCE',
  BlendMode.exclusion: 'EXCLUSION',
  BlendMode.hue: 'HUE',
  BlendMode.saturation: 'SATURATION',
  BlendMode.color: 'COLOR',
  BlendMode.luminosity: 'LUMINOSITY',
};

const _$ScaleModeEnumMap = {
  ScaleMode.fill: 'FILL',
  ScaleMode.fit: 'FIT',
  ScaleMode.tile: 'TILE',
  ScaleMode.stretch: 'STRETCH',
};
