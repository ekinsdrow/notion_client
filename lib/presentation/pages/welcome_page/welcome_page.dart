import 'package:flutter/material.dart';
import 'package:notion_client/presentation/pages/welcome_page/first_page.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: paddingsMedium,
            right: paddingsMedium,
            bottom: paddingsBig,
          ),
          child: const FirstPage(),
        ),
      ),
    );
  }
}
