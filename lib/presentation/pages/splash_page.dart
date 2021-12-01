import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 100),
        constraints: const BoxConstraints(
          minWidth: 212,
        ),
        child: SvgPicture.asset(
          SvgPath.logo,
        ),
      ),
    );
  }
}
