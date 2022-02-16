import 'package:flutter/material.dart';
import 'package:notion_client/presentation/models/auth_token.dart';
import 'package:provider/provider.dart';

class MainPageScope extends StatelessWidget {
  const MainPageScope({
    required this.child,
    required this.token,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final String token;

  @override
  Widget build(BuildContext context) {
    return Provider<AuthToken>(
      create: (context) => AuthToken(
        token: token,
      ),
      child: child,
    );
  }
}
