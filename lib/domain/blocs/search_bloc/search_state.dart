part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.error({
    required String error,
  }) = Error;
  const factory SearchState.success({
    required WorkspaceGraph resultGraph,
  }) = Success;
}
