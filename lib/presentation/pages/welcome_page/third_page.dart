import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

//TODO(Ann):Page view
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
          IconButton(
            onPressed: backButtonCallback,
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ],
      ),
    );
  }
}