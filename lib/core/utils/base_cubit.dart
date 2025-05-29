import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data_state.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  BaseCubit(super.initialState);

  @override
  Future<void> close() async {
    await closeToken();
    return super.close();
  }

  Future<void> closeToken();

  Future<void> cancelPreviousRequest({CancelToken? cancelToken}) async {
    if (cancelToken?.isCancelled == false) {
      cancelToken?.cancel();
    }
  }

  bool isCancelled({CancelToken? cancelToken}) =>
      cancelToken?.isCancelled ?? true;

  bool isSuccess<T>(DataState<T> response) {
    return response is DataSuccess;
  }
}
