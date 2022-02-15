// Interface to Pages and Database
import 'package:notion_client/data/models/base_object_parent.dart';

abstract class BaseObject {
  String get id;
  String get title;
  String get object;
  BaseObjectParent get parent;
}
