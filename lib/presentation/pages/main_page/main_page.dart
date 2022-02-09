import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
    required this.token,
  }) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        ProfileRouter(),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          SvgPath.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgPath.home,
            ),
            activeIcon: SvgPicture.asset(
              SvgPath.home,
              color: AppTheme.primaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgPath.user,
            ),
            activeIcon: SvgPicture.asset(
              SvgPath.user,
              color: AppTheme.primaryColor,
            ),
            label: '',
          ),
        ],
        currentIndex: tabsRouter.activeIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (final index) {
          tabsRouter.setActiveIndex(index);
        },
      ),
    );
  }
}
