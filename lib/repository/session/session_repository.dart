import 'package:meta/meta.dart';
import 'package:mongo_dart/mongo_dart.dart';

import '../../shared/hash_extension.dart';
import 'schema/session_schema.dart';

@visibleForTesting
Map<String, Session> sessionDb = {};

class SessionRepository {
  const SessionRepository(
    this._database, {
    DateTime Function()? now,
  }) : _now = now ?? DateTime.now;
  final Db _database;

  final DateTime Function() _now;

  Future<Session> createSession(String userId) async {
    final now = _now();
    final session = Session(
      token: '${userId}_${now.toIso8601String()}'.hashValue,
      userId: userId,
      expiryDate: now.add(const Duration(days: 1)),
      createdAt: now,
    );

    sessionDb[session.token] = session;
    return session;
  }

  Future<Session?> sessionFromToken(String token) async {
    final session = sessionDb[token];

    if (session != null && session.expiryDate.isAfter(_now())) {
      return session;
    }

    return null;
  }
}
