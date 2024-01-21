import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';

class DataBaseService {
  DataBaseService._internal();
  factory DataBaseService() {
    return _dataBaseService;
  }

  bool _isConnected = false;
  final _db = Db(
    'mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+2.1.1',
  );

  static final DataBaseService _dataBaseService = DataBaseService._internal();

  Db? get database => _isConnected ? _db : null;

  Future<void> connect() async {
    if (_isConnected) {
      return;
    }
    try {
      await _db.open();
      _isConnected = true;
    } catch (e) {
      log(e.toString());
    }
  }
}
