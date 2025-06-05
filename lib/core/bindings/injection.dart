import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/splash/data/repositories/token_repository_impl.dart';
import '../../features/splash/data/source/token_client.dart';
import '../../features/splash/domain/repositories/token_repository.dart';
import '../../features/splash/domain/usecases/get_token_usecase.dart';
import '../../features/splash/presentation/cubit/splash_cubit.dart';
import '../../shared/services/network_service.dart';
import '../../shared/services/storage_service.dart';
import '../../shared/services/theme_service.dart';
import '../constants/app_constants.dart';

final di = GetIt.instance;

Future<void> setupInjection() async {
  di.registerSingleton<Dio>(
      Dio(), instanceName: AppConstants.generalDioInstance);
  di.registerSingleton<Dio>(
      Dio(AppConstants.tokenClientBaseOptions),
      instanceName: AppConstants.tokenClientDioInstance);
  di.registerSingleton<StorageService>(StorageService());
  final networkService = NetworkService();
  networkService.initialize();
  di.registerSingleton<NetworkService>(
      networkService, dispose: (s) => s.dispose());

  final themeService = ThemeService(storageService: di<StorageService>());
  await themeService.initialize();
  di.registerSingleton<ThemeService>(themeService, dispose: (s) => s.dispose());

  di.registerSingleton<TokenClient>(
      TokenClient(di<Dio>(instanceName: AppConstants.tokenClientDioInstance)));
  di.registerSingleton<TokenRepository>(
      TokenRepositoryImpl(tokenClient: di<TokenClient>()));
  di.registerSingleton<GetTokenUseCase>(GetTokenUseCase(
      tokenRepository: di<TokenRepository>(),
      storageService: di<StorageService>()));
  di.registerFactory(() => SplashCubit(getTokenUseCase: di<GetTokenUseCase>()));
}
