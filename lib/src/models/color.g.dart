// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Color _$ColorFromJson(Map<String, dynamic> json) {
  return Color(
    r: (json['r'] as num)?.toDouble(),
    g: (json['g'] as num)?.toDouble(),
    b: (json['b'] as num)?.toDouble(),
    a: (json['a'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ColorToJson(Color instance) => <String, dynamic>{
      'r': instance.r,
      'g': instance.g,
      'b': instance.b,
      'a': instance.a,
    };
