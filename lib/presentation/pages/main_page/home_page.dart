import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:notion_client/presentation/components/horizontal_pages_listview.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/widgets/page_listview_item.dart';
import 'package:notion_client/presentation/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: _Header(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SearchSliverPersistentHeaderDelegate(
              max: 107,
              min: 107,
              child: const _Search(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _Fav(),
                SizedBox(
                  height: paddingsBetweenElem + 20,
                ),
                _PagesHeader(),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: paddingsBetweenElem,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => Column(
                  children: const [
                    PageListViewItem(),
                    SizedBox(
                      height: paddingsMedium,
                    ),
                  ],
                ),
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double max;
  final double min;

  _SearchSliverPersistentHeaderDelegate({
    required this.child,
    required this.max,
    required this.min,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: paddingsBetweenElem,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: paddingsTopPage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Добро пожаловать!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  child: SvgPicture.asset(
                    SvgPath.settings,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Search extends StatelessWidget {
  const _Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(
        horizontal: paddingsBetweenElem,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: paddingsMedium,
          ),
          GestureDetector(
            onTap: () {
              context.router.push(
                const SearchRoute(),
              );
            },
            child: Container(
              color: Colors.transparent,
              child: const IgnorePointer(
                child: SearchInput(),
              ),
            ),
          ),
          const SizedBox(
            height: paddingsBetweenElem,
          ),
        ],
      ),
    );
  }
}

class _Fav extends StatelessWidget {
  const _Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: paddingsBetweenElem,
          ),
          child: Column(
            children: [
              Text(
                S.of(context).fav,
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: paddingsMedium,
              ),
            ],
          ),
        ),
        const HorizontalPagesListView(),
      ],
    );
  }
}

class _PagesHeader extends StatelessWidget {
  const _PagesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: paddingsBetweenElem,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).pages_list,
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: paddingsMedium,
          ),
        ],
      ),
    );
  }
}
