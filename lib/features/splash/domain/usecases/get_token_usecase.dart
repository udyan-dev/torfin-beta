import 'package:dio/dio.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/app_exception.dart';
import '../../../../core/utils/base_usecase.dart';
import '../../../../core/utils/data_state.dart';
import '../../../../shared/services/storage_service.dart';
import '../repositories/token_repository.dart';

class GetTokenUseCase extends BaseUseCase<String, NoParams> {
  final TokenRepository _tokenRepository;
  final StorageService _storageService;

  GetTokenUseCase({
    required TokenRepository tokenRepository,
    required StorageService storageService,
  }) : _tokenRepository = tokenRepository,
       _storageService = storageService;

  @override
  Future<DataState<String>> call(
    NoParams params, {
    required CancelToken cancelToken,
  }) async {
    try {
      await _clearExistingToken();

      final result = await _tokenRepository.getApiToken(
        cancelToken: cancelToken,
      );

      if (isSuccess(result) && result.data != null) {
        await _storeToken(result.data!);
      }

      return result;
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(
        type: AppExceptionType.unknown,
        message: '${AppConstants.getTokenError}: ${e.toString()}',
      );
    }
  }

  Future<void> _clearExistingToken() async {
    await _storageService.setToken(AppConstants.emptyString);
  }

  Future<void> _storeToken(String token) async {
    await _storageService.setToken(token);
  }
}
