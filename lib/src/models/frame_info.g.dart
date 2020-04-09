// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrameInfo _$FrameInfoFromJson(Map<String, dynamic> json) {
  return FrameInfo(
    nodeId: json['node:_id'] as String,
    name: json['name'] as String,
    backgroundColor: json['background_color'] as String,
    pageId: json['page_id'] as String,
    pageName: json['page_name'] as String,
  );
}

Map<String, dynamic> _$FrameInfoToJson(FrameInfo instance) => <String, dynamic>{
      'node:_id': instance.nodeId,
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'page_id': instance.pageId,
      'page_name': instance.pageName,
    };
