import 'package:auto_route/auto_route.dart';
import 'package:notion_client/presentation/pages/pages.dart';


@MaterialAutoRouter(
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
  ],
)

class $AppRouter {}
