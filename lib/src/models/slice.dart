import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'slice.g.dart';

@JsonSerializable()
class Slice extends Node {
  /// An array of export settings representing images to export from this node
  final List<ExportSetting> exportSettings;

  /// Bounding box of the node in absolute space coordinates
  final SizeRectangle absoluteBoundingBox;

  /// Width and height of element. This is different from the width and height
  /// of the bounding box in that the absolute bounding box represents the
  /// element after scaling and rotation. Only present if geometry=paths is
  /// passed
  final Vector2D size;

  /// The top two rows of a matrix that represents the 2D transform of this node
  /// relative to its parent. The bottom row of the matrix is implicitly always
  /// (0, 0, 1). Use to transform coordinates in geometry. Only present if
  /// geometry=paths is passed
  final List<List<num>> relativeTransform;

  Slice({
    this.exportSettings,
    this.absoluteBoundingBox,
    this.size,
    this.relativeTransform,
  });

  @override
  List<Object> get props => [
        exportSettings,
        absoluteBoundingBox,
        size,
        relativeTransform,
      ];

  factory Slice.fromJson(Map<String, dynamic> json) => _$SliceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SliceToJson(this);
}
