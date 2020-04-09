import 'package:json_annotation/json_annotation.dart';

/// The type of style as string enum
enum StyleType {
  @JsonValue('FILL')
  fill,
  @JsonValue('TEXT')
  text,
  @JsonValue('EFFECT')
  effect,
  @JsonValue('GRID')
  grid
}
