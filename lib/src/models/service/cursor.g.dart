// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cursor _$CursorFromJson(Map<String, dynamic> json) {
  return Cursor(
    before: json['before'] as int,
    after: json['after'] as int,
  );
}

Map<String, dynamic> _$CursorToJson(Cursor instance) => <String, dynamic>{
      'before': instance.before,
      'after': instance.after,
    };
