// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeStyle _$TypeStyleFromJson(Map<String, dynamic> json) {
  return TypeStyle(
    fontFamily: json['fontFamily'] as String,
    fontPostScriptName: json['fontPostScriptName'] as String,
    paragraphSpacing: json['paragraphSpacing'] as num,
    paragraphIndent: json['paragraphIndent'] as num,
    italic: json['italic'] as bool,
    fontWeight: json['fontWeight'] as num,
    fontSize: json['fontSize'] as num,
    textCase: _$enumDecodeNullable(_$TextCaseEnumMap, json['textCase']),
    textDecoration:
        _$enumDecodeNullable(_$TextDecorationEnumMap, json['textDecoration']),
    textAlignHorizontal: _$enumDecodeNullable(
        _$TextAlignHorizontalEnumMap, json['textAlignHorizontal']),
    textAlignVertical: _$enumDecodeNullable(
        _$TextAlignVerticalEnumMap, json['textAlignVertical']),
    letterSpacing: json['letterSpacing'] as num,
    fills: (json['fills'] as List)
        ?.map(
            (e) => e == null ? null : Paint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    opentypeFlags: (json['opentypeFlags'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
    lineHeightPx: json['lineHeightPx'] as num,
    lineHeightPercent: json['lineHeightPercent'] as num,
    lineHeightPercentFontSize: json['lineHeightPercentFontSize'] as num,
    lineHeightUnit:
        _$enumDecodeNullable(_$LineHeightUnitEnumMap, json['lineHeightUnit']),
  );
}

Map<String, dynamic> _$TypeStyleToJson(TypeStyle instance) => <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'fontPostScriptName': instance.fontPostScriptName,
      'paragraphSpacing': instance.paragraphSpacing,
      'paragraphIndent': instance.paragraphIndent,
      'italic': instance.italic,
      'fontWeight': instance.fontWeight,
      'fontSize': instance.fontSize,
      'textCase': _$TextCaseEnumMap[instance.textCase],
      'textDecoration': _$TextDecorationEnumMap[instance.textDecoration],
      'textAlignHorizontal':
          _$TextAlignHorizontalEnumMap[instance.textAlignHorizontal],
      'textAlignVertical':
          _$TextAlignVerticalEnumMap[instance.textAlignVertical],
      'letterSpacing': instance.letterSpacing,
      'fills': instance.fills,
      'opentypeFlags': instance.opentypeFlags,
      'lineHeightPx': instance.lineHeightPx,
      'lineHeightPercent': instance.lineHeightPercent,
      'lineHeightPercentFontSize': instance.lineHeightPercentFontSize,
      'lineHeightUnit': _$LineHeightUnitEnumMap[instance.lineHeightUnit],
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

const _$TextCaseEnumMap = {
  TextCase.upper: 'UPPER',
  TextCase.lower: 'LOWER',
  TextCase.title: 'TITLE',
  TextCase.smallCaps: 'SMALL_CAPS',
  TextCase.smallCapsForced: 'SMALL_CAPS_FORCED',
};

const _$TextDecorationEnumMap = {
  TextDecoration.strikeThrough: 'STRIKETHROUGH',
  TextDecoration.underline: 'UNDERLINE',
};

const _$TextAlignHorizontalEnumMap = {
  TextAlignHorizontal.left: 'LEFT',
  TextAlignHorizontal.right: 'RIGHT',
  TextAlignHorizontal.center: 'CENTER',
  TextAlignHorizontal.justified: 'JUSTIFIED',
};

const _$TextAlignVerticalEnumMap = {
  TextAlignVertical.top: 'TOP',
  TextAlignVertical.center: 'CENTER',
  TextAlignVertical.bottom: 'BOTTOM',
};

const _$LineHeightUnitEnumMap = {
  LineHeightUnit.pixels: 'PIXELS',
  LineHeightUnit.fontSizePercent: 'FONT_SIZE_%',
  LineHeightUnit.intrinsicPercent: 'INTRINSIC_%',
};
