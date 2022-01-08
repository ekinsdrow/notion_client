import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/theme.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: AppTheme.primaryColor,
    );
  }
}
