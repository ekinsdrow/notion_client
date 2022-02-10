import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    this.textEditingController,
    this.autofocus = false,
    Key? key,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE2E2E2),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Builder(
        builder: (context) {
          const border = OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(color: Color(0x00000000)),
          );

          return TextField(
            autofocus: autofocus,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFFBFAFA),
              hintText: 'Поиск',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                  right: 15,
                ),
                child: SvgPicture.asset(SvgPath.search),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFFC4C4C4),
              ),
              enabledBorder: border,
              errorBorder: border,
              border: border,
              disabledBorder: border,
              focusedBorder: border,
            ),
          );
        },
      ),
    );
  }
}
