import 'package:equatable/equatable.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'components_response.g.dart';

@JsonSerializable()
class ComponentsResponse extends Equatable {
  /// Status code
  final int status;

  /// If the operation ended in error
  final bool error;

  /// List of components, if any, along with metadata
  final ComponentsMeta meta;

  ComponentsResponse({this.status, this.error, this.meta});

  @override
  List<Object> get props => [status, error, meta];

  factory ComponentsResponse.fromJson(Map<String, dynamic> json) =>
      _$ComponentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentsResponseToJson(this);
}
