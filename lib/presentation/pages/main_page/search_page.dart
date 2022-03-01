import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/back_button.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/widgets/search_input.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: paddingsBetweenElem,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(
                callback: () {
                  context.router.pop();
                },
              ),
              const SizedBox(
                height: paddingsBig,
              ),
              SearchInput(
                autofocus: true,
                textEditingController: searchController,
              ),
              const SearchResults(),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO (Anya): search results
class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
