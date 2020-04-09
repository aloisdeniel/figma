import 'package:equatable/equatable.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'styles_meta.g.dart';

@JsonSerializable()
class StylesMeta extends Equatable {
  /// List of [Style] objects
  final List<Style> styles;

  /// Pagination cursor
  final Cursor cursor;

  StylesMeta({this.styles, this.cursor});

  @override
  List<Object> get props => [styles, cursor];

  factory StylesMeta.fromJson(Map<String, dynamic> json) =>
      _$StylesMetaFromJson(json);

  Map<String, dynamic> toJson() => _$StylesMetaToJson(this);
}
