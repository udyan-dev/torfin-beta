import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'app_exception.dart';
import 'data_state.dart';

abstract class BaseRepository {
  @protected
  Future<DataState<T>> getStateOf<T>({
    required Future<T> Function() request,
  }) async {
    try {
      final result = await request();
      return DataSuccess(result);
    } on AppException {
      rethrow;
    } catch (error) {
      throw AppException(
        type: AppExceptionType.unknown,
        message: '${AppConstants.repositoryError}: ${error.toString()}',
      );
    }
  }

  @protected
  Map<String, dynamic> get getQueryParams => <String, dynamic>{
    AppConstants.queryTimestamp: DateTime.now().millisecondsSinceEpoch.toString(),
  };
}
