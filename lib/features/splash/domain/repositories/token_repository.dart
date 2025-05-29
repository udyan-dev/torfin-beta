import 'package:dio/dio.dart';

import '../../../../core/utils/data_state.dart';

abstract class TokenRepository {
  Future<DataState<String>> getApiToken({CancelToken? cancelToken});
}
