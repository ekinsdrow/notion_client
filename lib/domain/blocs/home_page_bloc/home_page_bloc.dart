import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notion_client/data/models/search_list.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc({
    required this.pagesRepository,
  }) : super(const Loading()) {
    on<HomePageEvent>(_fetch);
  }

  final PagesRepository pagesRepository;

  FutureOr<void> _fetch(
    HomePageEvent event,
    Emitter<HomePageState> emit,
  ) async {
    emit(
      const HomePageState.loading(),
    );

    try {
      final pages = await pagesRepository.getAllPages(
        token: event.token,
      );

      emit(
        HomePageState.success(result: pages),
      );
    } catch (e) {
      //TODO: error handling
      emit(
        HomePageState.error(
          error: e.toString().substring(0, 30),
        ),
      );
    }
  }
}
