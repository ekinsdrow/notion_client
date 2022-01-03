import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: paddingsMedium,
        right: paddingsMedium,
        bottom: paddingsBig,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            PngPath.welcomeImage,
            width: double.infinity,
          ),
          const SizedBox(
            height: paddingsMedium,
          ),
          Text(
            S.of(context).hello_header,
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: paddingsSmall,
          ),
          Text(
            S.of(context).lorem_ipsum,
          ),
        ],
      ),
    );
  }
}
