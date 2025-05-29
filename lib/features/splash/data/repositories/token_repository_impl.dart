import 'package:dio/dio.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/app_exception.dart';
import '../../../../core/utils/base_repository.dart';
import '../../../../core/utils/data_state.dart';
import '../../domain/repositories/token_repository.dart';
import '../source/token_client.dart';

class TokenRepositoryImpl extends BaseRepository implements TokenRepository {
  final TokenClient _tokenClient;

  TokenRepositoryImpl({required TokenClient tokenClient})
    : _tokenClient = tokenClient;

  @override
  Future<DataState<String>> getApiToken({CancelToken? cancelToken}) async {
    return getStateOf<String>(
      request: () async {
        final apiKey = await _fetchApiKey(cancelToken);
        _validateApiKey(apiKey);

        final token = await _fetchToken(apiKey, cancelToken);
        _validateToken(token);

        return token;
      },
    );
  }

  void _validateApiKey(String apiKey) {
    if (apiKey.isEmpty) {
      throw const AppException(
        type: AppExceptionType.parseError,
        message: AppConstants.apiKeyExtractionError,
      );
    }
  }

  void _validateToken(String token) {
    if (token.isEmpty) {
      throw const AppException(
        type: AppExceptionType.parseError,
        message: AppConstants.tokenExtractionError,
      );
    }
  }

  Future<String> _fetchApiKey(CancelToken? cancelToken) async {
    try {
      final response = await _tokenClient.fetchApiKey(cancelToken: cancelToken);
      return _extractApiKey(response);
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
      final response = await _tokenClient.fetchToken(
        apiKey,
        cancelToken: cancelToken,
      );
      return _extractToken(response);
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    } catch (e) {
      throw AppException(
        type: AppExceptionType.unknown,
        message: '${AppConstants.tokenFetchError}: ${e.toString()}',
      );
    }
  }

  String _extractApiKey(String response) =>
      AppConstants.regexForJs.firstMatch(response)?.group(0) ?? '';

  String _extractToken(String response) =>
      AppConstants.regexForKey.firstMatch(response)?.group(1) ?? '';
}
