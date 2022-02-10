import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';
import 'package:notion_client/domain/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:notion_client/presentation/models/auth_token.dart';
import 'package:provider/provider.dart';

class HomePageScope extends StatelessWidget {
  const HomePageScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(
        pagesRepository: RepositoryProvider.of<PagesRepository>(context),
      )..add(
          HomePageEvent.fetch(
            token: Provider.of<AuthToken>(
              context,
              listen: false,
            ).token,
          ),
        ),
      child: child,
    );
  }
}
