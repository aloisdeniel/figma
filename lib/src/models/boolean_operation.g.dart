// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooleanOperation _$BooleanOperationFromJson(Map<String, dynamic> json) {
  return BooleanOperation(
    children: (json['children'] as List)
        ?.map(const NodeJsonConverter().fromJson)
        ?.toList(),
    operation: _$enumDecodeNullable(_$OperationEnumMap, json['operation']),
    id: json['id'] as String,
    name: json['name'] as String,
    visible: json['visible'] as bool,
    pluginData: json['pluginData'],
    sharedPluginData: json['sharedPluginData'],
    locked: json['locked'] as bool,
    exportSettings: (json['exportSettings'] as List)
        ?.map((e) => e == null
            ? null
            : ExportSetting.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    blendMode: _$enumDecodeNullable(_$BlendModeEnumMap, json['blendMode']),
    preserveRatio: json['preserveRatio'] as bool,
    layoutAlign:
        _$enumDecodeNullable(_$LayoutAlignEnumMap, json['layoutAlign']),
    constraints: json['constraints'] == null
        ? null
        : LayoutConstraint.fromJson(
            json['constraints'] as Map<String, dynamic>),
    transitionNodeID: json['transitionNodeID'] as String,
    transitionDuration: (json['transitionDuration'] as num)?.toDouble(),
    transitionEasing:
        _$enumDecodeNullable(_$EasingTypeEnumMap, json['transitionEasing']),
    opacity: (json['opacity'] as num)?.toDouble(),
    absoluteBoundingBox: json['absoluteBoundingBox'] == null
        ? null
        : SizeRectangle.fromJson(
            json['absoluteBoundingBox'] as Map<String, dynamic>),
    effects: (json['effects'] as List)
        ?.map((e) =>
            e == null ? null : Effect.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    size: json['size'] == null
        ? null
        : Vector2D.fromJson(json['size'] as Map<String, dynamic>),
    relativeTransform: (json['relativeTransform'] as List)
        ?.map((e) => (e as List)?.map((e) => e as num)?.toList())
        ?.toList(),
    isMask: json['isMask'] as bool,
    fills: (json['fills'] as List)
        ?.map(
            (e) => e == null ? null : Paint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fillGeometry: json['fillGeometry'] as List,
    strokes: (json['strokes'] as List)
        ?.map(
            (e) => e == null ? null : Paint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strokeWeight: (json['strokeWeight'] as num)?.toDouble(),
    strokeCap: _$enumDecodeNullable(_$StrokeCapEnumMap, json['strokeCap']),
    strokeJoin: _$enumDecodeNullable(_$StrokeJoinEnumMap, json['strokeJoin']),
    strokeDashes: (json['strokeDashes'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    strokeMiterAngle: (json['strokeMiterAngle'] as num)?.toDouble(),
    strokeGeometry: json['strokeGeometry'] as List,
    strokeAlign:
        _$enumDecodeNullable(_$StrokeAlignEnumMap, json['strokeAlign']),
    styles: (json['styles'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(_$enumDecodeNullable(_$StyleTypeKeyEnumMap, k), e as String),
    ),
  );
}

Map<String, dynamic> _$BooleanOperationToJson(BooleanOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'visible': instance.visible,
      'pluginData': instance.pluginData,
      'sharedPluginData': instance.sharedPluginData,
      'locked': instance.locked,
      'exportSettings': instance.exportSettings,
      'blendMode': _$BlendModeEnumMap[instance.blendMode],
      'preserveRatio': instance.preserveRatio,
      'layoutAlign': _$LayoutAlignEnumMap[instance.layoutAlign],
      'constraints': instance.constraints,
      'transitionNodeID': instance.transitionNodeID,
      'transitionDuration': instance.transitionDuration,
      'transitionEasing': _$EasingTypeEnumMap[instance.transitionEasing],
      'opacity': instance.opacity,
      'absoluteBoundingBox': instance.absoluteBoundingBox,
      'effects': instance.effects,
      'size': instance.size,
      'relativeTransform': instance.relativeTransform,
      'isMask': instance.isMask,
      'fills': instance.fills,
      'fillGeometry': instance.fillGeometry,
      'strokes': instance.strokes,
      'strokeWeight': instance.strokeWeight,
      'strokeCap': _$StrokeCapEnumMap[instance.strokeCap],
      'strokeJoin': _$StrokeJoinEnumMap[instance.strokeJoin],
      'strokeDashes': instance.strokeDashes,
      'strokeMiterAngle': instance.strokeMiterAngle,
      'strokeGeometry': instance.strokeGeometry,
      'strokeAlign': _$StrokeAlignEnumMap[instance.strokeAlign],
      'styles':
          instance.styles?.map((k, e) => MapEntry(_$StyleTypeKeyEnumMap[k], e)),
      'children':
          instance.children?.map(const NodeJsonConverter().toJson)?.toList(),
      'operation': _$OperationEnumMap[instance.operation],
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

const _$OperationEnumMap = {
  Operation.union: 'UNION',
  Operation.intersect: 'INTERSECT',
  Operation.subtract: 'SUBTRACT',
  Operation.exclude: 'EXCLUDE',
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

const _$LayoutAlignEnumMap = {
  LayoutAlign.min: 'MIN',
  LayoutAlign.center: 'CENTER',
  LayoutAlign.max: 'MAX',
  LayoutAlign.stretch: 'STRETCH',
};

const _$EasingTypeEnumMap = {
  EasingType.easeIn: 'EASE_IN',
  EasingType.easeOut: 'EASE_OUT',
  EasingType.easeInOut: 'EASE_IN_AND_OUT',
  EasingType.linear: 'LINEAR',
};

const _$StrokeCapEnumMap = {
  StrokeCap.none: 'NONE',
  StrokeCap.round: 'ROUND',
  StrokeCap.square: 'SQUARE',
  StrokeCap.lineArrow: 'LINE_ARROW',
  StrokeCap.triangleArrow: 'TRIANGLE_ARROW',
};

const _$StrokeJoinEnumMap = {
  StrokeJoin.miter: 'MITER',
  StrokeJoin.bevel: 'BEVEL',
  StrokeJoin.round: 'ROUND',
};

const _$StrokeAlignEnumMap = {
  StrokeAlign.inside: 'INSIDE',
  StrokeAlign.outside: 'OUTSIDE',
  StrokeAlign.center: 'CENTER',
};

const _$StyleTypeKeyEnumMap = {
  StyleTypeKey.fill: 'fill',
  StyleTypeKey.stroke: 'stroke',
  StyleTypeKey.text: 'text',
  StyleTypeKey.effect: 'effect',
  StyleTypeKey.grid: 'grid',
};
