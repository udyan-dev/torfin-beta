import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/app_exception.dart';
import '../../../../core/utils/base_cubit.dart';
import '../../../../core/utils/base_usecase.dart';
import '../../../../core/utils/data_state.dart';
import '../../domain/usecases/get_token_usecase.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends BaseCubit<SplashState> {
  final GetTokenUseCase _getTokenUseCase;
  CancelToken? _cancelToken;

  SplashCubit({required GetTokenUseCase getTokenUseCase})
    : _getTokenUseCase = getTokenUseCase,
      super(const SplashState());

  @override
  Future<void> closeToken() async {
    _cancelToken?.cancel();
    _cancelToken = null;
  }

  Future<void> getToken() async {
    emit(state.copyWith(status: DataEnum.loading, error: null));

    await cancelPreviousRequest(cancelToken: _cancelToken);

    try {
      _cancelToken = CancelToken();

      final result = await _getTokenUseCase.call(
        NoParams(),
        cancelToken: _cancelToken!,
      );

      if (!isCancelled(cancelToken: _cancelToken)) {
        if (isSuccess(result)) {
          emit(state.copyWith(status: DataEnum.success, error: null));
        } else {
          emit(
            state.copyWith(
              status: DataEnum.error,
              error:
                  result.error ??
                  const AppException(
                    type: AppExceptionType.unknown,
                    message: AppConstants.unknownError,
                  ),
            ),
          );
        }
      }
    } on AppException catch (e) {
      if (!isCancelled(cancelToken: _cancelToken)) {
        emit(state.copyWith(status: DataEnum.error, error: e));
      }
    } catch (e) {
      if (!isCancelled(cancelToken: _cancelToken)) {
        emit(
          state.copyWith(
            status: DataEnum.error,
            error: AppException(
              type: AppExceptionType.unknown,
              message: '${AppConstants.getTokenError}: ${e.toString()}',
            ),
          ),
        );
      }
    }
  }
}
