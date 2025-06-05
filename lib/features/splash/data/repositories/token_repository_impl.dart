import 'package:dio/dio.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/app_exception.dart';
import '../../../../core/utils/base_repository.dart';
import '../../../../core/utils/data_state.dart';
import '../../domain/repositories/token_repository.dart';
import '../source/token_client.dart';

class TokenRepositoryImpl extends BaseRepository implements TokenRepository {
  TokenRepositoryImpl({required TokenClient tokenClient})
      : _tokenClient = tokenClient;

  final TokenClient _tokenClient;

  @override
  Future<DataState<String>> getApiToken({CancelToken? cancelToken}) async {
    return getStateOf<String>(
      request: () async {
        final apiKey = await _fetchApiKey(cancelToken);
        if (apiKey.isEmpty) {
          throw const AppException(
            type: AppExceptionType.parseError,
            message: AppConstants.apiKeyExtractionError,
          );
        }

        final token = await _fetchToken(apiKey, cancelToken);
        if (token.isEmpty) {
          throw const AppException(
            type: AppExceptionType.parseError,
            message: AppConstants.tokenExtractionError,
          );
        }

        return token;
      },
    );
  }

  Future<String> _fetchApiKey(CancelToken? cancelToken) async {
    try {
      final response = await _tokenClient.fetchApiKey(cancelToken: cancelToken);
      final match = AppConstants.regexForJs.firstMatch(response);
      return match?.group(0) ?? AppConstants.emptyString;
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    } catch (e) {
      throw AppException(
        type: AppExceptionType.unknown,
        message: '${AppConstants.apiKeyFetchError}: ${e.toString()}',
      );
    }
  }

  Future<String> _fetchToken(String apiKey, CancelToken? cancelToken) async {
    try {
      final response = await _tokenClient.fetchToken(apiKey, cancelToken: cancelToken);
      final match = AppConstants.regexForKey.firstMatch(response);
      return match?.group(1) ?? AppConstants.emptyString;
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    } catch (e) {
      throw AppException(
        type: AppExceptionType.unknown,
        message: '${AppConstants.tokenFetchError}: ${e.toString()}',
      );
    }
  }
}
