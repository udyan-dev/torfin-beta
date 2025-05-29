part of 'splash_cubit.dart';

enum SplashStatus { initial, loading, success, error }

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState({
    @Default(DataEnum.initial) DataEnum status,
    AppException? error,
  }) = _SplashState;
}
