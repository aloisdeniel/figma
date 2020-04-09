// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) {
  return ImageResponse(
    err: json['err'] as String,
    images: (json['images'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    status: json['status'] as int,
  );
}

Map<String, dynamic> _$ImageResponseToJson(ImageResponse instance) =>
    <String, dynamic>{
      'err': instance.err,
      'images': instance.images,
      'status': instance.status,
    };
