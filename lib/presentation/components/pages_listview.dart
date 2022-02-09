import 'package:flutter/material.dart';
import 'package:notion_client/presentation/widgets/page_listview_item.dart';

class PagesListView extends StatefulWidget {
  const PagesListView({Key? key}) : super(key: key);

  @override
  State<PagesListView> createState() => _PagesListViewState();
}

class _PagesListViewState extends State<PagesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const PageListViewItem(),
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
      ),
      itemCount: 5,
    );
  }
}
