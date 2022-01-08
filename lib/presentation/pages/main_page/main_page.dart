import 'package:flutter/material.dart';
import 'package:notion_client/data/repositories/token_repository.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
    required this.token,
  }) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Logout'),
          onPressed: () async {
            await context.read<TokenRepository>().deleteToken();

            context.router.replaceAll([
              const WelcomeRoute(),
            ]);
          },
        ),
      ),
    );
  }
}
