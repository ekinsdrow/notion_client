import 'package:notion_client/data/models/base_object_parent.dart';
import 'package:notion_client/data/models/interfaces/base_list.dart';
import 'package:notion_client/data/models/interfaces/base_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workspace_graph.freezed.dart';

class WorkspaceGraph {
  WorkspaceGraph({
    required this.workspaceObjects,
  });

  factory WorkspaceGraph.fromBaseList({required BaseList baseList}) {
    final lookup = <String, BaseObjectNode>{};

    for (final baseObject in baseList.results) {
      lookup[baseObject.id] = BaseObjectNode(
        baseObject: baseObject,
        children: [],
        parent: null,
      );
    }

    for (var item in lookup.values) {
      final type = item.baseObject.parent.type;
      BaseObjectNode? proposedParent;

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

    return WorkspaceGraph(
      workspaceObjects: [
        for (final workspaceObj in lookup.values)
          if (workspaceObj.baseObject.parent.type == BaseObjectParentType.workspace) workspaceObj
      ],
    );
  }


  final List<BaseObjectNode> workspaceObjects;
}

@freezed
class BaseObjectNode with _$BaseObjectNode {
  factory BaseObjectNode({
    required BaseObject baseObject,
    required BaseObjectNode? parent,
    required List<BaseObjectNode> children,
  }) = _BaseObjectNode;
}
