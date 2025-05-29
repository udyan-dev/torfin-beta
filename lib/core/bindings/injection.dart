import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/splash/data/repositories/token_repository_impl.dart';
import '../../features/splash/data/source/token_client.dart';
import '../../features/splash/domain/repositories/token_repository.dart';
import '../../features/splash/domain/usecases/get_token_usecase.dart';
import '../../features/splash/presentation/cubit/splash_cubit.dart';
import '../../shared/services/storage_service.dart';
import '../../shared/services/theme_service.dart';

final di = GetIt.instance;

void setup() {
  _registerCore();
  _registerServices();
  _registerRepositories();
  _registerUseCases();
  _registerCubits();
}

void _registerCore() {
  di.registerSingleton<Dio>(Dio());
}

void _registerServices() {
  di.registerSingleton<StorageService>(StorageService());
  di.registerSingleton<ThemeService>(
      ThemeService(storageService: di<StorageService>())
        ..initialize(),
      dispose: (service) => service.dispose());
  di.registerSingleton<TokenClient>(TokenClient(di<Dio>()));
}

void _registerRepositories() {
  di.registerSingleton<TokenRepository>(
    TokenRepositoryImpl(tokenClient: di<TokenClient>()),
  );
}

void _registerUseCases() {
  di.registerSingleton<GetTokenUseCase>(
    GetTokenUseCase(
      tokenRepository: di<TokenRepository>(),
      storageService: di<StorageService>(),
    ),
  );
}

void _registerCubits() {
  di.registerFactory(() => SplashCubit(getTokenUseCase: di<GetTokenUseCase>()));
}
