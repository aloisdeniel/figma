// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_rectangle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SizeRectangle _$SizeRectangleFromJson(Map<String, dynamic> json) {
  return SizeRectangle(
    x: (json['x'] as num)?.toDouble(),
    y: (json['y'] as num)?.toDouble(),
    width: (json['width'] as num)?.toDouble(),
    height: (json['height'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$SizeRectangleToJson(SizeRectangle instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };
