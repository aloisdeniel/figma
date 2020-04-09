import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'star.g.dart';

@JsonSerializable()
class Star extends Vector {
  Star();

  @override
  List<Object> get props => [];

  factory Star.fromJson(Map<String, dynamic> json) => _$StarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StarToJson(this);
}
