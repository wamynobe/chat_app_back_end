import 'dart:io';

import 'package:chat_app/repository/user/user_repository.dart';
import 'package:chat_app/shared/response/app_response_customization.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _createUser(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _createUser(RequestContext context) async {
  final body = await context.request.json() as Map<String, dynamic>;
  final name = body['name'] as String?;
  final username = body['username'] as String?;
  final password = body['password'] as String?;

  final userRepository = UserRepository(context.read());

  if (name != null && username != null && password != null) {
    final user = await userRepository.createUser(
      name: name,
      username: username,
      password: password,
    );
    return Response.json(
      body: AppResponse.success(
        message: 'User created successfully',
        statusCode: HttpStatus.created,
        data: {
          'user': user.toJson(),
        },
      ).toJson(),
    );
  } else {
    return Response(statusCode: HttpStatus.badRequest);
  }
}
