import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    required this.backButtonCallback,
    Key? key,
  }) : super(key: key);

  final VoidCallback backButtonCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: paddingsMedium,
        right: paddingsMedium,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: backButtonCallback,
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          Image.asset(PngPath.welcomeScreen1),
          const SizedBox(height: paddingsMedium,),
          Text(S.of(context).lorem_ipsum,)

        ],
      ),
    );
  }
}
