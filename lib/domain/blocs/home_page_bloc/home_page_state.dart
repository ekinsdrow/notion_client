part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loading() = Loading;
  const factory HomePageState.success({required BaseGraph result}) = Success;
  const factory HomePageState.error({required String error}) = Error;
}
