import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_schema.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String token,
    required String userId,
    required DateTime expiryDate,
    required DateTime createdAt,
  }) = _Session;
}
