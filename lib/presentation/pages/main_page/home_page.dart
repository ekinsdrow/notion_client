import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/components/horizontal_pages_listview.dart';
import 'package:notion_client/presentation/components/pages_listview.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: paddingsMedium,
        ),
        child: Column(
          children: const [
            _Top(),
            _Fav(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: _Pages(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: paddingsMedium,
        right: paddingsMedium,
        bottom: paddingsBig,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: paddingsTopPage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Добро пожаловать!',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
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
          const SizedBox(
            height: paddingsBetweenElem,
          ),
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0xFFE2E2E2),
                blurRadius: 20,
                offset: Offset(0, 8),
              ),
            ]),
            child: Builder(builder: (context) {
              const border = OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                borderSide: BorderSide(color: Color(0x00000000)),
              );
              return TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFFBFAFA),
                  hintText: 'Поиск',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 20, bottom: 20, right: 15),
                    child: SvgPicture.asset(SvgPath.search),
                  ),
                  hintStyle: const TextStyle(color: Color(0xFFC4C4C4)),
                  enabledBorder: border,
                  errorBorder: border,
                  border: border,
                  disabledBorder: border,
                  focusedBorder: border,
                ),
              );
            }),
          )
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
        Text(
          S.of(context).fav,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 24,
        ),
        const HorizontalPagesListView(),
      ],
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).pages_list,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          child: const PagesListView(),
        ),
      ],
    );
  }
}
