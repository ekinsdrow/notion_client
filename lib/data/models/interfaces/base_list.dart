import 'package:notion_client/data/models/interfaces/base_object.dart';

abstract class BaseList {
  String get object;

  String? get nextCursor;

  bool get hasMore;

  List<BaseObject> get results;
}
