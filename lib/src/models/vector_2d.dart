import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vector_2d.g.dart';

/// A 2d vector
@JsonSerializable()
class Vector2D extends Equatable {
  /// X coordinate of the vector
  final num x;

  /// Y coordinate of the vector
  final num y;

  Vector2D({this.x, this.y});

  @override
  List<Object> get props => [x, y];

  factory Vector2D.fromJson(Map<String, dynamic> json) =>
      _$Vector2DFromJson(json);

  Map<String, dynamic> toJson() => _$Vector2DToJson(this);
}
