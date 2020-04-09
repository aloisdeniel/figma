import 'package:figma/src/models/vector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'line.g.dart';

@JsonSerializable()
class Line extends Vector {
  Line();

  @override
  List<Object> get props => [];

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineToJson(this);
}
