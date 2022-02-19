import 'package:flutter/material.dart';
import 'package:notion_client/internal/di/search_scope.dart';
import 'package:notion_client/presentation/components/search_component.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchScope(
      child: SearchComponent(),
    );
  }
}
