import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rectangle.g.dart';

@JsonSerializable()
class Rectangle extends Vector {
  /// Radius of each corner of the rectangle if
  /// a single radius is set for all corners
  final num cornerRadius;

  /// Array of length 4 of the radius of each corner of the rectangle,
  /// starting in the top left and proceeding clockwise
  final List<num> rectangleCornerRadii;

  Rectangle({
    this.cornerRadius,
    this.rectangleCornerRadii,
  });

  @override
  List<Object> get props => [cornerRadius, rectangleCornerRadii];

  factory Rectangle.fromJson(Map<String, dynamic> json) =>
      _$RectangleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RectangleToJson(this);
}
