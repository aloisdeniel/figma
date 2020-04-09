import 'package:equatable/equatable.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'styles_response.g.dart';

@JsonSerializable()
class StylesResponse extends Equatable {
  /// Status code
  final int status;

  /// If the operation ended in error
  final bool error;

  /// [Style] list + metadata
  final StylesMeta meta;

  StylesResponse({this.status, this.error, this.meta});

  @override
  List<Object> get props => [status, error, meta];

  factory StylesResponse.fromJson(Map<String, dynamic> json) =>
      _$StylesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StylesResponseToJson(this);
}
