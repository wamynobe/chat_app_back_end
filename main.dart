import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:chat_app/service/db_service.dart';
import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final db = DataBaseService();
  await db.connect();
  final dbService = db.database;
  if (dbService == null) {
    throw Exception('Could not connect to database');
  }
  log('connnect to database');

  // final chain = Platform.script.resolve('certificates/server_chain.pem').toFilePath();
  // final key = Platform.script.resolve('certificates/server_key.pem').toFilePath();

  // final securityContext = SecurityContext()
  //   ..useCertificateChain(chain)
  //   ..usePrivateKey(key, password: 'VeryGoodPassword');

  // Or use the Dart Frog serve method to do that for you.
  return serve(handler.use(provider((context) => dbService)), ip, port);
}
