import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notion_client/domain/use_cases/workspace_graph.dart';
import 'package:notion_client/generated/l10n.dart';
import 'package:notion_client/presentation/assets_paths/resources.dart';
import 'package:notion_client/presentation/modals/show_modal.dart';
import 'package:notion_client/presentation/theme/paddings.dart';

showPageActionModal({
  required BuildContext context,
  required BaseObjectNode object,
}) {
  showModal(
    context: context,
    headerText: S.of(context).actions,
    child: const PageActionsModal(),
  );
}

class PageActionsModal extends StatelessWidget {
  const PageActionsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.cancel,
          text: S.of(context).cancel,
        ),
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.edit,
          text: S.of(context).edit,
        ),
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.remove,
          text: S.of(context).remove,
        ),
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.fav,
          text: S.of(context).add_to_fav,
        ),
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.copy,
          text: S.of(context).copy,
        ),
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.link,
          text: S.of(context).copy_link,
        ),
        _PageActionItem(
          callback: () {},
          iconPath: SvgPath.goTo,
          text: S.of(context).go_to,
        ),
      ],
    );
  }
}

class _PageActionItem extends StatelessWidget {
  const _PageActionItem({
    required this.callback,
    required this.iconPath,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback callback;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: paddingsBetweenElem,
          vertical: paddingsMedium,
        ),
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
