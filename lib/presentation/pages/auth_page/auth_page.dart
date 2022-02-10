import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/domain/blocs/auth_bloc/auth_bloc.dart';
import 'package:notion_client/internal/di/auth_page_scope.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:notion_client/presentation/theme/theme.dart';
import 'package:notion_client/presentation/widgets/loader.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

class AuthPage extends StatefulWidget {
  const AuthPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final redirectUrl = Uri.parse('https://ekinsdrow.ru/notion/oauth-success.html');
  late Uri _authorizationUrl;
  var _loadingBloc = false;
  var _loadingWebView = true;

  @override
  void initState() {
    const identifier = '334d1a5c-d1f5-4836-8669-83ed18e5e6dc';
    const secret = '';
    final authorizationEndpoint = Uri.parse(
      'https://api.notion.com/v1/oauth/authorize',
    );
    final tokenEndpoint = Uri.parse('http://example.com/oauth2/token');
    final grant = oauth2.AuthorizationCodeGrant(
      identifier,
      authorizationEndpoint,
      tokenEndpoint,
      secret: secret,
    );
    _authorizationUrl = grant.getAuthorizationUrl(redirectUrl);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScope(
      child: Builder(builder: (context) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) => state.whenOrNull(
            loading: () {
              setState(() {
                _loadingBloc = true;
              });

            },
            success: (token) {
              context.router.replaceAll(
                [
                  MainRoute(
                    token: token,
                  ),
                ],
              );

            },
            error: () {
              //TODO(Ivan): handle error

            },
          ),
          child: Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: Stack(
                children: [
                  WebView(
                    onPageFinished: (url) {
                      setState(() {
                        _loadingWebView = false;
                      });
                    },
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _authorizationUrl.toString(),
                    onPageStarted: (url) {
                      final _url = Uri.parse(url);

                      if (_url.queryParameters.containsKey('code')) {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.fetch(
                            code: _url.queryParameters['code']!,
                            redirectUrl: redirectUrl.toString(),
                          ),
                        );
                      }
                    },
                  ),
                  if (_loadingWebView || _loadingBloc)
                    Container(
                      color: AppTheme.backgroundColor,
                      child: const Center(
                        child: Loader(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
