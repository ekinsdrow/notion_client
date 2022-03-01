import 'package:flutter/material.dart';
import 'package:notion_client/internal/di/search_scope.dart';
import 'package:notion_client/presentation/components/search_component.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SearchScope(
      child: SearchComponent(),
    );
  }
}
