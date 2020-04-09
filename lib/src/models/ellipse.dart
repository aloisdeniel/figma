import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ellipse.g.dart';

@JsonSerializable()
class Ellipse extends Vector {
  Ellipse();

  @override
  List<Object> get props => [];

  factory Ellipse.fromJson(Map<String, dynamic> json) =>
      _$EllipseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EllipseToJson(this);
}
