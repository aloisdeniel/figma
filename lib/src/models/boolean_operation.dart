import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boolean_operation.g.dart';

/// A string enum indicating the type of boolean operation applied
enum Operation {
  @JsonValue('UNION')
  union,
  @JsonValue('INTERSECT')
  intersect,
  @JsonValue('SUBTRACT')
  subtract,
  @JsonValue('EXCLUDE')
  exclude
}

@JsonSerializable()
class BooleanOperation extends Vector {
  /// An array of nodes that are being boolean operated on
  final List<Node> children;

  /// A string enum with value of "UNION", "INTERSECT", "SUBTRACT", or "EXCLUDE"
  ///  indicating the type of boolean operation applied
  final Operation operation;

  BooleanOperation({this.children, this.operation});

  @override
  List<Object> get props => [children, operation];

  factory BooleanOperation.fromJson(Map<String, dynamic> json) =>
      _$BooleanOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BooleanOperationToJson(this);
}
