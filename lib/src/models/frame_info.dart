import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'frame_info.g.dart';

/// Data on the frame a component resides in
@JsonSerializable()
class FrameInfo extends Equatable {
  /// Id of the frame node within the figma file
  @JsonKey(name: 'node:_id')
  final String nodeId;

  /// Name of the frame
  final String name;

  /// Background color of the frame
  @JsonKey(name: 'background_color')
  final String backgroundColor;

  /// Id of the frame's residing page
  @JsonKey(name: 'page_id')
  final String pageId;

  /// Name of the frame's residing page
  @JsonKey(name: 'page_name')
  final String pageName;

  FrameInfo({
    this.nodeId,
    this.name,
    this.backgroundColor,
    this.pageId,
    this.pageName,
  });

  @override
  List<Object> get props => [
        nodeId,
        name,
        backgroundColor,
        pageId,
        pageName,
      ];

  factory FrameInfo.fromJson(Map<String, dynamic> json) =>
      _$FrameInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FrameInfoToJson(this);
}
