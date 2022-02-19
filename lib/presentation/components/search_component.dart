import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/domain/blocs/search_bloc/search_bloc.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/widgets/loader.dart';
import 'package:notion_client/presentation/widgets/retry_error_widget.dart';
import 'package:notion_client/presentation/widgets/search_input.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  final _searchInputController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _searchInputController.addListener(() {
      _fetch();
    });
  }

  @override
  void dispose() {
    _searchInputController.dispose();
    super.dispose();
  }

  void _fetch() {
    if (_searchInputController.text.isNotEmpty) {
      BlocProvider.of<SearchBloc>(context).add(
        SearchEvent.fetch(request: _searchInputController.text),
      );
    }
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
            children: [
              const SizedBox(
                height: paddingsTopPage,
              ),
              SearchInput(
                autofocus: true,
                textEditingController: _searchInputController,
              ),
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state is Success) {
                      //TODO: with results
                      return const SearchResults();
                    } else if (state is Error) {
                      return RetryErrorWidget(
                        errorText: state.error,
                        callback: _fetch,
                      );
                    } else if (state is Loading) {
                      return const Center(
                        child: Loader(),
                      );
                    }

                    return SearchResults();
                  },
                ),
              ),
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
