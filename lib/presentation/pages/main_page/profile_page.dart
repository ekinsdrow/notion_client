import 'package:flutter/material.dart';
import 'package:notion_client/data/repositories/token_repository.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Logout'),
        onPressed: () async {
          await context.read<TokenRepository>().deleteToken();

          context.router.replaceAll([
            const WelcomeRoute(),
          ]);
        },
      ),
    );
  }
}
