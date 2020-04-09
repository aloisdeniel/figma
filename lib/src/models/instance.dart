import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance.g.dart';

@JsonSerializable()
class Instance extends Frame {
  /// ID of component that this instance came from, refers to components
  /// table (see endpoints section below)
  final String componentId;
  Instance({this.componentId});

  @override
  List<Object> get props => [componentId];

  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InstanceToJson(this);
}
