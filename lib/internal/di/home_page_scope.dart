import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/data/clients/notion_client.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';
import 'package:notion_client/data/repositories/pages_repository_impl.dart';
import 'package:notion_client/domain/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:notion_client/presentation/models/auth_token.dart';

class HomePageScope extends StatelessWidget {
  const HomePageScope({
    required this.child,
    Key? key,
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
        create: (context) => HomePageBloc(
          pagesRepository: RepositoryProvider.of<PagesRepository>(context),
        )..add(
            const HomePageEvent.fetch(),
          ),
        child: child,
      ),
    );
  }
}
