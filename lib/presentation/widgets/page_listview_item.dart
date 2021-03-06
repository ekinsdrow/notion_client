import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notion_client/domain/use_cases/workspace_graph.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/modals/page_actions_modal.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

class PageListViewItem extends StatefulWidget {
  const PageListViewItem({
    Key? key,
    required this.object,
  }) : super(key: key);

  final BaseObjectNode object;

  @override
  State<PageListViewItem> createState() => _PageListViewItemState();
}

class _PageListViewItemState extends State<PageListViewItem> {
  var showChild = false;

  void openItemModal() {
    showPageActionModal(
      context: context,
      object: widget.object,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showChild = !showChild;
        });
      },
      child: Column(
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
                  Text(
                    widget.object.baseObject.emojiIcon != null
                        ? widget.object.baseObject.emojiIcon!.emoji
                        : '📄',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Text(
                    widget.object.baseObject.title,
                  ),
                ],
              ),
              GestureDetector(
                onTap: openItemModal,
                child: Container(
                  color: Colors.transparent,
                  height: 20,
                  width: 40,
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                ),
              ),
            ],
          ),
          if (showChild)
            if (widget.object.children.isNotEmpty)
              Column(
                children: [
                  const SizedBox(
                    height: paddingsMedium / 2,
                  ),
                  for (final object in widget.object.children)
                    Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: PageListViewItem(
                                object: object,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: paddingsMedium / 2,
                        ),
                      ],
                    ),
                ],
              ),
        ],
      ),
    );
  }
}
