// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rectangle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rectangle _$RectangleFromJson(Map<String, dynamic> json) {
  return Rectangle(
    cornerRadius: json['cornerRadius'] as num,
    rectangleCornerRadii:
        (json['rectangleCornerRadii'] as List)?.map((e) => e as num)?.toList(),
  );
}

Map<String, dynamic> _$RectangleToJson(Rectangle instance) => <String, dynamic>{
      'cornerRadius': instance.cornerRadius,
      'rectangleCornerRadii': instance.rectangleCornerRadii,
    };
