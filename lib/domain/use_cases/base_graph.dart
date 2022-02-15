import 'package:notion_client/data/models/base_object_parent.dart';
import 'package:notion_client/data/models/interfaces/base_list.dart';
import 'package:notion_client/data/models/interfaces/base_object.dart';

class BaseGraph {
  BaseGraph({
    required this.workspaceObjects,
  });

  void _printAll({
    required List<BaseObjectLeaf> list,
  }) {
    for (final o in list) {
      print('--------------${o.baseObject.title} ${o.baseObject.id}------------');

      if (o.children.isNotEmpty) {
        _printAll(list: o.children);
      }
    }
  }

  void printAll() {
    _printAll(list: workspaceObjects);
  }

  factory BaseGraph.fromBaseList({required BaseList baseList}) {
    final workspaceObjects = <BaseObjectLeaf>[];
    final remainingObjects = [...baseList.results];

    //Generate workSpace objects
    for (final baseObject in baseList.results) {
      final type = baseObject.parent.type;
      if (type == BaseObjectParentType.workspace) {
        workspaceObjects.add(
          BaseObjectLeaf(
            baseObject: baseObject,
            children: [],
          ),
        );

        remainingObjects.remove(baseObject);
      }
    }

    //TODO: add other layer of graph

    return BaseGraph(
      workspaceObjects: workspaceObjects,
    );
  }

  final List<BaseObjectLeaf> workspaceObjects;
}

class BaseObjectLeaf {
  final BaseObject baseObject;
  final List<BaseObjectLeaf> children;

  BaseObjectLeaf({
    required this.baseObject,
    required this.children,
  });
}
