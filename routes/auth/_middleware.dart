import 'package:chat_app/repository/session/session.dart';
import 'package:chat_app/repository/user/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(
        provider<UserRepository>(
          (context) => UserRepository(
            context.read(),
          ),
        ),
      )
      .use(
        provider<SessionRepository>(
          (context) => SessionRepository(context.read()),
        ),
      );
}
