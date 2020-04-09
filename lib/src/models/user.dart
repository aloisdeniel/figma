import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// A description of a Figma user
@JsonSerializable()
class User extends Equatable {
  /// Unique stable id of the user
  final String id;

  /// Name of the user
  final String handle;

  /// URL link to the user's profile image
  @JsonKey(name: 'img_url')
  final String imageUrl;

  /// Email associated with the user's account.
  /// This will only be present on the /v1/me endpoint
  final String email;

  User({this.id, this.handle, this.imageUrl, this.email});

  @override
  List<Object> get props => [id, handle, imageUrl, email];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
