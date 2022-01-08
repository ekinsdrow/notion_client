import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notion_client/data/models/auth_body.dart';
import 'package:notion_client/data/repositories/auth_repository.dart';
import 'package:notion_client/data/repositories/token_repository.dart';
import 'package:notion_client/notion_keys.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final TokenRepository tokenRepository;

  AuthBloc({
    required this.authRepository,
    required this.tokenRepository,
  }) : super(const Initial()) {
    on<AuthEvent>((event, emit) async {
      emit(const Loading());

      try {
        final auth = await authRepository.getToken(
          authBody: AuthBody(
            code: event.code,
            redirectUri: event.redirectUrl,
          ),
          token: base64Encode(
            utf8.encode('$clientKey:$secret'),
          ),
        );

        await tokenRepository.saveToken(token: auth.accessToken);

        emit(const Success());
      } on Exception {
        emit(
          const Error(),
        );
      }
    });
  }
}
