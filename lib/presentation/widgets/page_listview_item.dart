import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';

class PageListViewItem extends StatelessWidget {
  const PageListViewItem({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: SvgPicture.asset(
                    SvgPath.triangle,
                    width: 10,
                    height: 10,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '🥺',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                const Text(
                  'Дом',
                ),
              ],
            ),
            Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      if (i != 3)
                        const SizedBox(
                          width: 2,
                        ),
                    ],
                  ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 50,
          ),
        ),
      ],
    );
  }
}
