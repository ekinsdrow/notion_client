import 'package:notion_client/data/models/database.dart';
import 'package:notion_client/data/models/page.dart';
import 'package:notion_client/data/models/interfaces/base_list.dart';
import 'package:notion_client/data/models/interfaces/base_object.dart';

class SearchList implements BaseList {
  SearchList({
    required this.results,
    required this.hasMore,
    required this.nextCursor,
    required this.object,
  });

  @override
  final bool hasMore;

  @override
  final String? nextCursor;

  @override
  final String object;

  @override
  final List<BaseObject> results;

  factory SearchList.fromJson(Map<String, dynamic> json) {
    final resultsJson = json['results'] as List;
    final results = <BaseObject>[];

    for (final v in resultsJson) {
      if (v['object'] == 'page') {
        results.add(Page.fromJson(v));
      } else if (v['object'] == 'database') {
        results.add(Database.fromJson(v));
      }
    }

    return SearchList(
      hasMore: json['has_more'] as bool,
      nextCursor: json['next_cursor'] as String?,
      object: json['object'] as String,
      results: results,
    );
  }
}
