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
import 'package:flutter/material.dart' as _i6;

import '../../presentation/pages/auth_page/auth_page.dart' as _i3;
import '../../presentation/pages/main_page/main_page.dart' as _i4;
import '../../presentation/pages/splash_page.dart' as _i1;
import '../../presentation/pages/welcome_page/welcome_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomePage());
    },
    AuthRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AuthPage());
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.MainPage(key: args.key, token: args.token));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(WelcomeRoute.name, path: '/welcome_route'),
        _i5.RouteConfig(AuthRoute.name, path: '/auth'),
        _i5.RouteConfig(MainRoute.name, path: '/main')
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
  MainRoute({_i6.Key? key, required String token})
      : super(MainRoute.name,
            path: '/main', args: MainRouteArgs(key: key, token: token));

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({this.key, required this.token});

  final _i6.Key? key;

  final String token;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, token: $token}';
  }
}
