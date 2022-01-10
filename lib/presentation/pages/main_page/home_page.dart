import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: paddingsMedium,
        ),
        child: Column(
          children: [
            Text(
              S.of(context).hello_header_2,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: AppTheme.textColor,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
