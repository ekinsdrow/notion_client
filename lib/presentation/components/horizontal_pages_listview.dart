import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class HorizontalPagesListView extends StatefulWidget {
  const HorizontalPagesListView({
    Key? key,
  }) : super(key: key);

  @override
  State<HorizontalPagesListView> createState() => _HorizontalPagesListViewState();
}

class _HorizontalPagesListViewState extends State<HorizontalPagesListView> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 110,
          child: ListView.separated(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => UnconstrainedBox(
              child: Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F4F4),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.07),
                      offset: const Offset(
                        5,
                        4,
                      ),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '🥺',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Page',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: paddingsMedium,
            ),
            itemCount: 5,
          ),
        ),
        const SizedBox(
          height: paddingsMedium,
        ),

        //TODO(Ivan) : Scrollbar
      ],
    );
  }
}
