import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/components/horizontal_pages_listview.dart';
import 'package:notion_client/presentation/components/pages_listview.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: paddingsMedium,
        ),
        child: Column(
          children: const [
            _Top(),
            _Fav(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: _Pages(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO(ANYA): create top of widget
    return Container();
  }
}

class _Fav extends StatelessWidget {
  const _Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).fav,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 24,
        ),
        const HorizontalPagesListView(),
      ],
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).pages_list,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          child: const PagesListView(),
        ),
      ],
    );
  }
}
