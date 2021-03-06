import 'package:auto_route/auto_route.dart';
import 'package:notion_client/presentation/pages/auth_page/auth_page.dart';
import 'package:notion_client/presentation/pages/main_page/home_page.dart';
import 'package:notion_client/presentation/pages/main_page/main_page.dart';
import 'package:notion_client/presentation/pages/main_page/profile_page.dart';
import 'package:notion_client/presentation/pages/main_page/search_page.dart';
import 'package:notion_client/presentation/pages/splash_page.dart';
import 'package:notion_client/presentation/pages/welcome_page/welcome_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      initial: true,
      name: 'SplashRoute',
      page: SplashPage,
    ),
    AutoRoute<dynamic>(
      path: '/welcome_route',
      page: WelcomePage,
    ),
    AutoRoute<dynamic>(
      path: '/auth',
      page: AuthPage,
    ),
    AutoRoute<dynamic>(
      page: MainPage,
      children: [
        AutoRoute<dynamic>(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<dynamic>(
              path: '',
              page: HomePage,
            ),
            AutoRoute<dynamic>(
              path: 'search',
              page: SearchPage,
            ),
          ],
        ),
        AutoRoute<dynamic>(
          path: 'profile',
          name: 'ProfileRouter',
          page: ProfilePage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
