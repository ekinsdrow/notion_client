import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/data/clients/notion_client.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';
import 'package:notion_client/data/repositories/pages_repository_impl.dart';
import 'package:notion_client/domain/blocs/search_bloc/search_bloc.dart';
import 'package:notion_client/presentation/models/auth_token.dart';

class SearchScope extends StatelessWidget {
  const SearchScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<PagesRepository>(
      create: (context) => PagesRepositoryImpl(
        notionClient: context.read<NotionClient>(),
        token: context.read<AuthToken>().token,
      ),
      child: BlocProvider(
        create: (context) => SearchBloc(
          pagesRepository: RepositoryProvider.of<PagesRepository>(context),
        ),
        child: child,
      ),
    );
  }
}
