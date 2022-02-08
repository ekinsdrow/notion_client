import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/theme/paddings.dart';
import 'package:notion_client/presentation/theme/theme.dart';

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
            height: paddingsAbove,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Добро пожаловать!',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              GestureDetector(
                  //onTap: хз что тут вызвать
                  child: Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(
                        SvgPath.settings,
                      )))
            ],
          ),
          const SizedBox(
            height: paddingsBetween,
          ),
          Material(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFFBFAFA),
                  hintText: 'Поиск',
                  prefix: SvgPicture.asset(SvgPath.search),
                  hintStyle: const TextStyle(color: Color(0xFFC4C4C4)),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(color: Color(0x00000000)),
                  )),
            ),
            elevation: 16.0,
            shadowColor: const Color(0xFFE2E2E2),
          )
        ],
      ),
    );
  }
}
