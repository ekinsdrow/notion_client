import 'package:notion_client/data/models/base_object_parent.dart';
import 'package:notion_client/data/models/interfaces/base_list.dart';
import 'package:notion_client/data/models/interfaces/base_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_graph.freezed.dart';

class BaseGraph {
  BaseGraph({
    required this.workspaceObjects,
  });

  void _printAll({
    required List<BaseObjectLeaf> list,
    required int tab,
  }) {
    for (final o in list) {
      var i = tab;
      var tabs = '';
      for (var i = 0; i < tab; i++) {
        tabs += ' ';
      }

      print(
        '$tabs--------------${o.baseObject.title} ${o.baseObject.id}  ${o.children.length}------------',
      );

      if (o.children.isNotEmpty) {
        i += 5;

        _printAll(
          list: o.children,
          tab: i,
        );
      }
    }
  }

  void printAll() {
    _printAll(
      list: workspaceObjects,
      tab: 0,
    );
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

    BaseObjectLeaf? _findLeafParent({
      required BaseObject baseObject,
      required BaseObjectLeaf workSpaceLeaf,
      required bool isDatabase,
    }) {
      if (workSpaceLeaf.baseObject.id == (isDatabase ? baseObject.parent.databaseId : baseObject.parent.pageId)) {
        workSpaceLeaf.children.add(
          BaseObjectLeaf(
            baseObject: baseObject,
            children: [],
          ),
        );

        return workSpaceLeaf;
      } else {
        if (workSpaceLeaf.children.isNotEmpty) {
          //Todo: sub pages
          for (final o in workSpaceLeaf.children) {}
        }
      }

        return workSpaceLeaf;

    }

    //TODO: add other layer of graph

    while (remainingObjects.isNotEmpty) {
      print(remainingObjects.length);
      for (final remainingObject in [...remainingObjects]) {
        for (var i = 0; i < workspaceObjects.length; i++) {
          final leaf = _findLeafParent(
            baseObject: remainingObject,
            workSpaceLeaf: workspaceObjects[i],
            isDatabase: remainingObject.parent.type == BaseObjectParentType.database,
          );

          if (leaf != workspaceObjects[i]) {
            if (leaf != null) {
              workspaceObjects[i] = leaf;
              remainingObjects.remove(remainingObject);
            }
          }
        }
      }
    }

    return BaseGraph(
      workspaceObjects: workspaceObjects,
    );
  }

  final List<BaseObjectLeaf> workspaceObjects;
}

@freezed
class BaseObjectLeaf with _$BaseObjectLeaf {
  factory BaseObjectLeaf({
    required BaseObject baseObject,
    required List<BaseObjectLeaf> children,
  }) = _BaseObjectLeaf;
}
