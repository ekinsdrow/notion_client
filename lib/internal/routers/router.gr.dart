// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i9;
import 'package:notion_client/presentation/pages/auth_page/auth_page.dart'
    as _i3;
import 'package:notion_client/presentation/pages/main_page/home_page.dart'
    as _i7;
import 'package:notion_client/presentation/pages/main_page/main_page.dart'
    as _i4;
import 'package:notion_client/presentation/pages/main_page/profile_page.dart'
    as _i6;
import 'package:notion_client/presentation/pages/main_page/search_page.dart'
    as _i8;
import 'package:notion_client/presentation/pages/splash_page.dart' as _i1;
import 'package:notion_client/presentation/pages/welcome_page/welcome_page.dart'
    as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.WelcomePage());
    },
    AuthRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.AuthPage());
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.MainPage(key: args.key, token: args.token));
    },
    HomeRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.SearchPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(WelcomeRoute.name, path: '/welcome_route'),
        _i5.RouteConfig(AuthRoute.name, path: '/auth'),
        _i5.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i5.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name),
                _i5.RouteConfig(SearchRoute.name,
                    path: 'search', parent: HomeRouter.name)
              ]),
          _i5.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomeRoute extends _i5.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome_route');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.AuthPage]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i5.PageRouteInfo<MainRouteArgs> {
  MainRoute(
      {_i9.Key? key, required String token, List<_i5.PageRouteInfo>? children})
      : super(MainRoute.name,
            path: '/main-page',
            args: MainRouteArgs(key: key, token: token),
            initialChildren: children);

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({this.key, required this.token});

  final _i9.Key? key;

  final String token;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.SearchPage]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}
