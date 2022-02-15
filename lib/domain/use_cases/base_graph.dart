import 'package:notion_client/data/models/base_object_parent.dart';
import 'package:notion_client/data/models/interfaces/base_list.dart';
import 'package:notion_client/data/models/interfaces/base_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_graph.freezed.dart';

class BaseGraph {
  BaseGraph({
    required this.workspaceObjects,
  });

  factory BaseGraph.fromBaseList({required BaseList baseList}) {
    final lookup = <String, BaseObjectLeaf>{};

    for (final baseObject in baseList.results) {
      lookup[baseObject.id] = BaseObjectLeaf(
        baseObject: baseObject,
        children: [],
        parent: null,
      );
    }

    for (var item in lookup.values) {
      final type = item.baseObject.parent.type;
      BaseObjectLeaf? proposedParent;

      if (type == BaseObjectParentType.database && lookup.containsKey(item.baseObject.parent.databaseId)) {
        proposedParent = lookup[item.baseObject.parent.databaseId]!;
      } else if (type == BaseObjectParentType.page && lookup.containsKey(item.baseObject.parent.pageId)) {
        proposedParent = lookup[item.baseObject.parent.pageId]!;
      }

      if (proposedParent != null) {
        proposedParent.children.add(item);
        final key = lookup.keys.firstWhere((element) => element == item.baseObject.id);
        lookup[key] = lookup[key]!.copyWith(
          parent: proposedParent,
        );
      }
    }

    return BaseGraph(
      workspaceObjects: [
        for (final workspaceObj in lookup.values)
          if (workspaceObj.baseObject.parent.type == BaseObjectParentType.workspace) workspaceObj
      ],
    );
  }


  final List<BaseObjectLeaf> workspaceObjects;
}

@freezed
class BaseObjectLeaf with _$BaseObjectLeaf {
  factory BaseObjectLeaf({
    required BaseObject baseObject,
    required BaseObjectLeaf? parent,
    required List<BaseObjectLeaf> children,
  }) = _BaseObjectLeaf;
}
