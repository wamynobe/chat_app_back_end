import 'package:mongo_dart/mongo_dart.dart';

import '../../shared/hash_extension.dart';
import 'schema/user_schema.dart';

const kUserCollection = 'users';

class UserRepository {
  UserRepository(this._database);

  final Db _database;

  Future<User?> userFromCredentials(String username, String password) async {
    final hashedPassword = password.hashValue;
    final usersCollection = _database.collection(kUserCollection);
    final user = await usersCollection.findOne(
      where.eq('username', username).eq('password', hashedPassword),
    );
    if (user != null && user.isNotEmpty) {
      return User.fromJson(user);
    }
    return null;
  }

  Future<User?> userFromId(String id) async {
    final usersCollection = _database.collection(kUserCollection);
    final user = await usersCollection.findOne(where.eq('_id', id));
    if (user != null && user.isNotEmpty) {
      return User.fromJson(user);
    }
    return null;
  }

  Future<User> createUser({
    required String name,
    required String username,
    required String password,
  }) async {
    final user = User(
      name: name,
      username: username,
      password: password.hashValue,
    );

    await _database.collection(kUserCollection).insert(user.toJson());
    return user.copyWith(password: null);
  }

  Future<void> deleteUser(String id) async {
    await _database.collection(kUserCollection).remove(where.eq('_id', id));
  }

  Future<User> updateUser({
    required String id,
    required String? name,
    required String? username,
    required String? password,
  }) async {
    final userCollection = _database.collection(kUserCollection);
    final currentUser = await userCollection.update(
      where.eq('_id', id),
      User.fromJson(
        {
          if (name != null) 'name': name,
          if (username != null) 'username': username,
          if (password != null) 'password': password.hashValue,
        },
      ),
    );

    return User.fromJson(currentUser);
  }
}
