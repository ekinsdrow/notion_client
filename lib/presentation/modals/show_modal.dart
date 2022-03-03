import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/back_button.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

void showModal({
  required BuildContext context,
  required Widget child,
  required String headerText,
}) {
  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    builder: (context) {
      return SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: paddingsBetweenElem,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: paddingsBetweenElem,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        BackButtonWidget(
                          callback: () => Navigator.pop(context),
                        ),
                        Text(
                          headerText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: paddingsMedium,
              ),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      );
    },
  );
}
