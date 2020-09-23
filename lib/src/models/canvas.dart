import 'package:figma/src/converters/converters.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'canvas.g.dart';

/// A Canvas node represents a Page in a Figma File.
/// A Canvas node can then have any number of nodes as its children.
/// Each subtree stemming from a Canvas node will represent a layer
/// (e.g an object) on the Canvas.
@JsonSerializable()
class Canvas extends Node {
  /// An array of top level layers on the canvas
  @NodeJsonConverter()
  final List<Node> children;

  /// Background color of the canvas.
  final Color backgroundColor;

  /// Node ID that corresponds to the start frame for prototypes
  final String prototypeStartNodeID;

  /// An array of export settings representing images to export from the canvas
  final List<ExportSetting> exportSettings;

  Canvas({
    this.children,
    this.backgroundColor,
    this.prototypeStartNodeID,
    this.exportSettings,
  });

  @override
  List<Object> get props => [
        children,
        backgroundColor,
        prototypeStartNodeID,
        exportSettings,
      ];

  @override
  factory Canvas.fromJson(Map<String, dynamic> json) => _$CanvasFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CanvasToJson(this);
}
