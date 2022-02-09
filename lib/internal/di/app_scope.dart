import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:notion_client/data/clients/token_client.dart';
import 'package:notion_client/data/repositories/auth_repository.dart';
import 'package:notion_client/data/repositories/auth_repository_impl.dart';
import 'package:notion_client/data/clients/notion_client.dart';
import 'package:notion_client/data/repositories/token_repository.dart';
import 'package:notion_client/data/repositories/token_repository_impl.dart';
import 'package:notion_client/internal/network/dio_request_interceptor.dart';

class AppScope extends StatelessWidget {
  const AppScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    dio.interceptors.add(
      DioRequestInterceptor(),
    );
    
    const secureStorage = FlutterSecureStorage();

    final notionClient = NotionClient(
      dio,
    );

    final authRepository = AuthRepositoryImpl(
      notionClient: notionClient,
    );

    final tokenRepository = TokenRepositoryImpl(
      tokenClient: TokenClient(
        flutterSecureStorage: secureStorage,
      ),
    );

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>.value(
          value: authRepository,
        ),
        RepositoryProvider<TokenRepository>.value(
          value: tokenRepository,
        ),
      ],
      child: child,
    );
  }
}
