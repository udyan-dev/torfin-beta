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
  SplashCubit({required GetTokenUseCase getTokenUseCase})
      : _getTokenUseCase = getTokenUseCase,
        super(const SplashState());

  final GetTokenUseCase _getTokenUseCase;
  CancelToken? _cancelToken;

  static const _unknownError = AppException(
    type: AppExceptionType.unknown,
    message: AppConstants.unknownError,
  );

  @override
  Future<void> closeToken() async {
    _cancelToken?.cancel();
    _cancelToken = null;
  }

  Future<void> getToken() async {
    if (isClosed) return;

    emit(state.copyWith(status: DataEnum.loading, error: null));

    _cancelToken?.cancel();
    _cancelToken = CancelToken();
    final currentToken = _cancelToken!;

    try {
      final result = await _getTokenUseCase.call(NoParams(), cancelToken: currentToken);

      if (currentToken.isCancelled || isClosed) return;

      if (isSuccess(result)) {
        emit(state.copyWith(status: DataEnum.success, error: null));
      } else {
        emit(state.copyWith(
          status: DataEnum.error,
          error: result.error ?? _unknownError,
        ));
      }
    } on AppException catch (e) {
      if (!currentToken.isCancelled && !isClosed) {
        emit(state.copyWith(status: DataEnum.error, error: e));
      }
    } catch (e) {
      if (!currentToken.isCancelled && !isClosed) {
        emit(state.copyWith(
          status: DataEnum.error,
          error: AppException(
            type: AppExceptionType.unknown,
            message: '${AppConstants.getTokenError}: ${e.toString()}',
          ),
        ));
      }
    }
  }
}
