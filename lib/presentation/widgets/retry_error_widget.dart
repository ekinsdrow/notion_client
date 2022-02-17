import 'package:flutter/material.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorText,
        ),
        const SizedBox(
          height: paddingsMedium,
        ),
        ElevatedButton(
          onPressed: callback,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
