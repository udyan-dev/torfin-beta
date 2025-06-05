import 'package:dio/dio.dart';

import 'data_state.dart';

abstract class BaseUseCase<Type, Param> {
  Future<DataState<Type>> call(
    Param params, {
    required CancelToken cancelToken,
  });

  @pragma('vm:prefer-inline')
  bool isSuccess<T>(DataState<T> response) => response is DataSuccess;
}

class NoParams {}
