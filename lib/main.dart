import 'package:flutter/material.dart';
import 'package:notion_client/internal/di/app_scope.dart';
import 'package:notion_client/presentation/app.dart';

void main() {
  runApp(
    AppScope(
      child: App(),
    ),
  );
}
