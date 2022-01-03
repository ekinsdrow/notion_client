import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          PngPath.welcomeImage,
          width: double.infinity,
        ),
        const SizedBox(
          height: paddingsMedium,
        ),
        
      ],
    );
  }
}
