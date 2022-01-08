import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/data/repositories/auth_repository.dart';
import 'package:notion_client/data/repositories/token_repository.dart';
import 'package:notion_client/domain/blocs/auth_bloc/auth_bloc.dart';

class AuthScope extends StatelessWidget {
  const AuthScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        authRepository: RepositoryProvider.of<AuthRepository>(context),
        tokenRepository: RepositoryProvider.of<TokenRepository>(context),
      ),
      lazy: false,
      child: child,
    );
  }
}