// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Text _$TextFromJson(Map<String, dynamic> json) {
  return Text(
    characters: json['characters'] as String,
    style: json['style'] == null
        ? null
        : TypeStyle.fromJson(json['style'] as Map<String, dynamic>),
    characterStyleOverrides: (json['characterStyleOverrides'] as List)
        ?.map((e) => e as int)
        ?.toList(),
    styleOverrideTable:
        (json['styleOverrideTable'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : TypeStyle.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$TextToJson(Text instance) => <String, dynamic>{
      'characters': instance.characters,
      'style': instance.style,
      'characterStyleOverrides': instance.characterStyleOverrides,
      'styleOverrideTable':
          instance.styleOverrideTable?.map((k, e) => MapEntry(k.toString(), e)),
    };
