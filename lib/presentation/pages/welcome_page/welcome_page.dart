import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/internal/routers/router.gr.dart';
import 'package:notion_client/presentation/pages/welcome_page/first_page.dart';
import 'package:notion_client/presentation/pages/welcome_page/second_page.dart';
import 'package:notion_client/presentation/pages/welcome_page/third_page.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/theme/theme.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _pageController = PageController();
  var _page = 0.0;
  var _isNext = true;

  void _signIn() {
    context.router.push(
      const AuthRoute(),
    );
  }

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        if (_pageController.page != null) {
          if (_pageController.page! < _page) {
            _isNext = false;

            FocusScope.of(context).unfocus();
          } else {
            _isNext = true;
          }

          _page = _pageController.page!;
        }
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                children: [
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: FirstPage(),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SecondPage(
                      backButtonCallback: _previousPage,
                    ),
                  ),
                  ThirdPage(
                    backButtonCallback: _previousPage,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: paddingsMedium,
                right: paddingsMedium,
                bottom: paddingsBig,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Builder(builder: (context) {
                          final _active = (_isNext ? _page.ceil() : _page.floor()) == i;

                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            width: _active ? 26 : 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: _active ? const Color(0xFF989898) : const Color(0xFFC4C4C4),
                              borderRadius: _active ? BorderRadius.circular(7) : BorderRadius.circular(15),
                            ),
                          );
                        }),
                    ],
                  ),
                  const SizedBox(
                    height: paddingsBig,
                  ),
                  Builder(builder: (context) {
                    final _index = _isNext ? _page.ceil() : _page.floor();

                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _index == 1
                          ? Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 46,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        //TODO(Ann): open notion.so page
                                      },
                                      child: Text(
                                        S.of(context).open_notion,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: paddingsMedium,
                                ),
                                ClipOval(
                                  child: Material(
                                    child: InkWell(
                                      onTap: _nextPage,
                                      child: Container(
                                        width: 46,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppTheme.primaryColor,
                                            width: 2,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: AppTheme.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(
                              width: double.infinity,
                              height: 46,
                              child: ElevatedButton(
                                onPressed: _index == 0 ? _nextPage : _signIn,
                                child: Text(
                                  _index == 0 ? S.of(context).next : S.of(context).sign_in,
                                ),
                              ),
                            ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
