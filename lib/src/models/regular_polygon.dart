import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'regular_polygon.g.dart';

@JsonSerializable()
class RegularPolygon extends Vector {
  RegularPolygon({
    String id,
    String name,
    bool visible,
    dynamic pluginData,
    dynamic sharedPluginData,
    bool locked,
    List<ExportSetting> exportSettings,
    BlendMode blendMode,
    bool preserveRatio,
    LayoutAlign layoutAlign,
    double layoutGrow,
    LayoutConstraint constraints,
    String transitionNodeID,
    double transitionDuration,
    EasingType transitionEasing,
    double opacity,
    SizeRectangle absoluteBoundingBox,
    List<Effect> effects,
    Vector2D size,
    List<List<num>> relativeTransform,
    bool isMask,
    List<Paint> fills,
    List<dynamic> fillGeometry,
    List<Paint> strokes,
    double strokeWeight,
    StrokeCap strokeCap,
    StrokeJoin strokeJoin,
    List<double> strokeDashes,
    double strokeMiterAngle,
    List<dynamic> strokeGeometry,
    StrokeAlign strokeAlign,
    Map<StyleTypeKey, String> styles,
  }) : super(
          id: id,
          name: name,
          visible: visible,
          pluginData: pluginData,
          sharedPluginData: sharedPluginData,
          locked: locked,
          exportSettings: exportSettings,
          blendMode: blendMode,
          preserveRatio: preserveRatio,
          layoutAlign: layoutAlign,
          layoutGrow: layoutGrow,
          constraints: constraints,
          transitionNodeID: transitionNodeID,
          transitionDuration: transitionDuration,
          transitionEasing: transitionEasing,
          opacity: opacity,
          absoluteBoundingBox: absoluteBoundingBox,
          effects: effects,
          size: size,
          relativeTransform: relativeTransform,
          isMask: isMask,
          fills: fills,
          fillGeometry: fillGeometry,
          strokes: strokes,
          strokeWeight: strokeWeight,
          strokeCap: strokeCap,
          strokeJoin: strokeJoin,
          strokeDashes: strokeDashes,
          strokeMiterAngle: strokeMiterAngle,
          strokeGeometry: strokeGeometry,
          strokeAlign: strokeAlign,
          styles: styles,
        );

  @override
  List<Object> get props => super.props;

  factory RegularPolygon.fromJson(Map<String, dynamic> json) =>
      _$RegularPolygonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegularPolygonToJson(this);
}
