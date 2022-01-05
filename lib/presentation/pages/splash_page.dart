import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';



class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    //TODO(Ivan): remove
    Future.delayed(
      const Duration(microseconds: 500),
    ).then(
      (value) => context.router.replace(
        const WelcomeRoute(),
      ),
    );
  }

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
