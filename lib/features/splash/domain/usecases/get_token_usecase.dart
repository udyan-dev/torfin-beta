import 'package:dio/dio.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/app_exception.dart';
import '../../../../core/utils/base_usecase.dart';
import '../../../../core/utils/data_state.dart';
import '../../../../shared/services/storage_service.dart';
import '../repositories/token_repository.dart';

class GetTokenUseCase extends BaseUseCase<String, NoParams> {
  GetTokenUseCase({
    required TokenRepository tokenRepository,
    required StorageService storageService,
  }) : _tokenRepository = tokenRepository,
       _storageService = storageService;

  final TokenRepository _tokenRepository;
  final StorageService _storageService;

  @override
  Future<DataState<String>> call(
    NoParams params, {
    required CancelToken cancelToken,
  }) async {
    try {
      await _storageService.clearToken();

      final result = await _tokenRepository.getApiToken(cancelToken: cancelToken);

      if (result is DataSuccess<String> && result.data != null) {
        await _storageService.setToken(result.data!);
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
}
