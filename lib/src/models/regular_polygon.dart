import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'regular_polygon.g.dart';

@JsonSerializable()
class RegularPolygon extends Vector {
  RegularPolygon();

  @override
  List<Object> get props => [];

  factory RegularPolygon.fromJson(Map<String, dynamic> json) =>
      _$RegularPolygonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegularPolygonToJson(this);
}
