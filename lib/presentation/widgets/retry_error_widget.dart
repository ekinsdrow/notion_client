import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class RetryErrorWidget extends StatelessWidget {
  const RetryErrorWidget({
    required this.callback,
    required this.errorText,
    Key? key,
  }) : super(key: key);

  final VoidCallback callback;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: paddingsBetweenElem,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            //TODO: change Image
            PngPath.welcomeImage,
          ),
          const SizedBox(
            height: paddingsBig,
          ),
          Text(
            S.of(context).oops,
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: paddingsSmall,
          ),
          Text(
            errorText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: paddingsBig,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: callback,
              child: Text(
                S.of(context).retry,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
