import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/widgets/back_button.dart';

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
          BackButtonWidget(
            callback: backButtonCallback,
          ),
          const SizedBox(
            height: paddingsMedium,
          ),
          Text(
            S.of(context).sign_in,
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: paddingsMedium,
          ),
          Text(
            S.of(context).welcome_text_2,
          ),
          const SizedBox(
            height: paddingsMedium,
          ),
          Text(
            S.of(context).welcome_text_3,
          ),
        ],
      ),
    );
  }
}
