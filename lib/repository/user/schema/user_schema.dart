import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_schema.freezed.dart';
part 'user_schema.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required String username,
    required String? password,
    String? id,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
