import 'package:equatable/equatable.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_response.g.dart';

@JsonSerializable()
class FileResponse extends Equatable {
  /// Name of the file
  final String name;

  /// Role
  final String role;

  /// Last time file was modified
  final DateTime lastModified;

  /// URL to file thumbnail
  final String thumbnailUrl;

  /// File version
  final String version;

  /// File document (top-level node)
  final Document document;

  /// File components, if any
  final Map<String, Component> components;

  /// The schema version of the file
  final int schemaVersion;

  /// Map of styles within the file, if any
  final Map<String, Style> styles;

  FileResponse({
    this.name,
    this.role,
    this.lastModified,
    this.thumbnailUrl,
    this.version,
    this.document,
    this.components,
    this.schemaVersion,
    this.styles,
  });

  @override
  List<Object> get props => [
        name,
        role,
        lastModified,
        thumbnailUrl,
        version,
        document,
        components,
        schemaVersion,
        styles,
      ];

  factory FileResponse.fromJson(Map<String, dynamic> json) =>
      _$FileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FileResponseToJson(this);
}
