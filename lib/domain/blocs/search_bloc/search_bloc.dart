import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';
import 'package:notion_client/domain/use_cases/workspace_graph.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required this.pagesRepository,
  }) : super(const Initial()) {
    on<SearchEvent>(_fetch);
  }

  final PagesRepository pagesRepository;

  FutureOr<void> _fetch(
    SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(
      const SearchState.loading(),
    );

    try {
      final pages = await pagesRepository.search(
        request: event.request,
      );


      final result = WorkspaceGraph.fromBaseList(
        baseList: pages,
      );

      emit(
        SearchState.success(
          resultGraph: result,
        ),
      );
    } catch (e) {
      //TODO: error handling

      emit(
        SearchState.error(
          error: e.toString().substring(0, 30),
        ),
      );

      rethrow;
    }
  }
}
