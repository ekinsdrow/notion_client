part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.fetch({
    required String code,
    required String redirectUrl,
  }) = Fetch;
}
