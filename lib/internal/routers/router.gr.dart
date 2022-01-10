// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../presentation/pages/auth_page/auth_page.dart' as _i3;
import '../../presentation/pages/main_page/home_page.dart' as _i5;
import '../../presentation/pages/main_page/main_page.dart' as _i4;
import '../../presentation/pages/main_page/profile_page.dart' as _i6;
import '../../presentation/pages/splash_page.dart' as _i1;
import '../../presentation/pages/welcome_page/welcome_page.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomePage());
    },
    AuthRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AuthPage());
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.MainPage(key: args.key, token: args.token));
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfilePage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(WelcomeRoute.name, path: '/welcome_route'),
        _i7.RouteConfig(AuthRoute.name, path: '/auth'),
        _i7.RouteConfig(MainRoute.name, path: '/main', children: [
          _i7.RouteConfig(HomeRouter.name,
              path: 'home', parent: MainRoute.name),
          _i7.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome_route');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.AuthPage]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i7.PageRouteInfo<MainRouteArgs> {
  MainRoute(
      {_i8.Key? key, required String token, List<_i7.PageRouteInfo>? children})
      : super(MainRoute.name,
            path: '/main',
            args: MainRouteArgs(key: key, token: token),
            initialChildren: children);

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({this.key, required this.token});

  final _i8.Key? key;

  final String token;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
