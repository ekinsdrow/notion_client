import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
    required this.backButtonCallback,
  }) : super(key: key);

  final VoidCallback backButtonCallback;

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
          GestureDetector(
            onTap: backButtonCallback,
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.centerLeft,
              width: 40,
              height: 40,
              child: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          const SizedBox(
            height: paddingsMedium,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: S.of(context).token,
            ),
            autofocus: true,
          ),
        ],
      ),
    );
  }
}
