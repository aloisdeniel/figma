import 'package:figma/src/converters/converters.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'frame.g.dart';

/// A Figma Frame
@JsonSerializable()
class Frame extends Node {
  /// An array of nodes that are direct children of this node
  @NodeJsonConverter()
  final List<Node> children;

  /// If true, layer is locked and cannot be edited
  final bool locked;

  /// An array of fill paints applied to the node
  final List<Paint> fills;

  /// An array of stroke paints applied to the node
  final List<Paint> strokes;

  /// The weight of strokes on the node
  final num strokeWeight;

  /// Position of stroke relative to vector outline, as a string enum
  final StrokeAlign strokeAlign;

  /// Radius of each corner of the frame if a single radius is set for all corners
  final double cornerRadius;

  /// Array of length 4 of the radius of each corner of the frame,
  /// starting in the top left and proceeding clockwise
  final List<num> rectangleCornerRadii;

  /// An array of export settings representing images to export from node
  final List<ExportSetting> exportSettings;

  /// How this node blends with nodes behind it in the scene
  final BlendMode blendMode;

  /// Keep height and width constrained to same ratio
  final bool preserveRatio;

  /// Horizontal and vertical layout constraints for node
  final LayoutConstraint constraints;

  /// How the layer is aligned inside an auto-layout frame.
  /// This property is only provided for direct children
  /// of auto-layout frames.
  ///
  /// In horizontal auto-layout frames, "MIN" and "MAX" correspond to
  /// "TOP" and "BOTTOM". In vertical auto-layout frames, "MIN" and "MAX"
  /// correspond to "LEFT" and "RIGHT".
  final LayoutAlign layoutAlign;

  /// Node ID of node to transition to in prototyping
  final String transitionNodeID;

  /// The duration of the prototyping transition on this node (in milliseconds)
  final double transitionDuration;

  /// The easing curve used in the prototyping transition on this node
  final EasingType transitionEasing;

  /// Opacity of the node
  final double opacity;

  /// Bounding box of the node in absolute space coordinates
  final SizeRectangle absoluteBoundingBox;

  /// Width and height of element. This is different from the width and height
  /// of the bounding box in that the absolute bounding box represents the
  /// element after scaling and rotation. Only present if geometry=paths
  /// is passed
  final Vector2D size;

  /// The top two rows of a matrix that represents the 2D transform of this
  /// node relative to its parent. The bottom row of the matrix is implicitly
  /// always (0, 0, 1). Use to transform coordinates in geometry. Only present
  /// if `geometry=paths` is passed
  final List<List<num>> relativeTransform;

  /// Whether or not this node clip content outside of its bounds
  final bool clipsContent;

  /// Whether this layer uses auto-layout to position its children.
  final LayoutMode layoutMode;

  /// Whether the counter axis has a fixed length (determined by the user)
  /// or an automatic length (determined by the layout engine). This property
  /// is only applicable for auto-layout frames.
  final CounterAxisSizingMode counterAxisSizingMode;

  /// The horizontal padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  final num horizontalPadding;

  /// The vertical padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  final num verticalPadding;

  /// The distance between children of the frame.
  /// This property is only applicable for auto-layout frames.
  final num itemSpacing;

  /// An array of layout grids attached to this node. [Group] nodes do not
  /// have this attribute
  final List<LayoutGrid> layoutGrids;

  /// Defines the scrolling behavior of the frame, if there exist contents
  /// outside of the frame boundaries. The frame can either scroll vertically,
  /// horizontally, or in both directions to the extents of the content
  /// contained within it. This behavior can be observed in a prototype.
  final OverflowDirection overflowDirection;

  /// An array of effects attached to this node
  final List<Effect> effects;

  /// Does this node mask sibling nodes in front of it?
  final bool isMask;

  /// Does this mask ignore fill style (like gradients) and effects?
  final bool isMaskOutline;

  Frame({
    String id,
    String name,
    bool visible,
    dynamic pluginData,
    dynamic sharedPluginData,
    this.children,
    this.locked,
    this.fills,
    this.strokes,
    this.strokeWeight,
    this.strokeAlign,
    this.cornerRadius,
    this.rectangleCornerRadii,
    this.exportSettings,
    this.blendMode,
    this.preserveRatio,
    this.constraints,
    this.layoutAlign,
    this.transitionNodeID,
    this.transitionDuration,
    this.transitionEasing,
    this.opacity,
    this.absoluteBoundingBox,
    this.size,
    this.relativeTransform,
    this.clipsContent,
    this.layoutMode,
    this.counterAxisSizingMode,
    this.horizontalPadding,
    this.verticalPadding,
    this.itemSpacing,
    this.layoutGrids,
    this.overflowDirection,
    this.effects,
    this.isMask,
    this.isMaskOutline,
  }) : super(
          id: id,
          name: name,
          visible: visible,
          pluginData: pluginData,
          sharedPluginData: sharedPluginData,
        );

  @override
  List<Object> get props => [
        ...super.props,
        children,
        locked,
        fills,
        strokes,
        strokeWeight,
        strokeAlign,
        cornerRadius,
        rectangleCornerRadii,
        exportSettings,
        blendMode,
        preserveRatio,
        constraints,
        layoutAlign,
        transitionNodeID,
        transitionDuration,
        transitionEasing,
        opacity,
        absoluteBoundingBox,
        size,
        relativeTransform,
        clipsContent,
        layoutMode,
        counterAxisSizingMode,
        horizontalPadding,
        verticalPadding,
        itemSpacing,
        layoutGrids,
        overflowDirection,
        effects,
        isMask,
        isMaskOutline,
      ];

  factory Frame.fromJson(Map<String, dynamic> json) => _$FrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FrameToJson(this);
}
