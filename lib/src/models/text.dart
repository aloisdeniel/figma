import 'package:figma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text.g.dart';

@JsonSerializable()
class Text extends Vector {
  /// Text contained within text box
  final String characters;

  /// Style of text including font family and weight (see [TypeStyle])
  final TypeStyle style;

  /// Array with same number of elements as characeters in text box, each
  /// element is a reference to the styleOverrideTable defined below and maps
  /// to the corresponding character in the characters field. Elements with
  /// value 0 have the default type style
  final List<int> characterStyleOverrides;

  /// Map from ID to [TypeStyle] for looking up style overrides
  final Map<int, TypeStyle> styleOverrideTable;

  Text({
    this.characters,
    this.style,
    this.characterStyleOverrides,
    this.styleOverrideTable,
  });

  @override
  List<Object> get props => [
        characters,
        style,
        characterStyleOverrides,
        styleOverrideTable,
      ];

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TextToJson(this);
}
