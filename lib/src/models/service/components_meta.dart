import 'package:equatable/equatable.dart';
import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'components_meta.g.dart';

@JsonSerializable()
class ComponentsMeta extends Equatable {
  /// List of components
  final List<Component> components;

  /// Pagniation cursor
  final Cursor cursor;

  ComponentsMeta({this.components, this.cursor});

  @override
  List<Object> get props => [components, cursor];

  factory ComponentsMeta.fromJson(Map<String, dynamic> json) =>
      _$ComponentsMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentsMetaToJson(this);
}
