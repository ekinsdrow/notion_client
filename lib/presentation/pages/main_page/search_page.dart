import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/widgets/search_input.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: paddingsBetweenElem,
          ),
          child: Column(
            children: const [
              SizedBox(
                height: paddingsTopPage,
              ),
              SearchInput(
                autofocus: true,
              ),

              //TODO (Anya): search results
            ],
          ),
        ),
      ),
    );
  }
}
