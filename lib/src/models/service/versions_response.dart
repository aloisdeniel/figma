import 'package:equatable/equatable.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'versions_response.g.dart';

@JsonSerializable()
class VersionsResponse extends Equatable {
  /// List of versions
  final List<Version> versions;

  VersionsResponse({this.versions});

  @override
  List<Object> get props => [versions];

  factory VersionsResponse.fromJson(Map<String, dynamic> json) =>
      _$VersionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VersionsResponseToJson(this);
}
