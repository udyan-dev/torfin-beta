import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/bindings/injection.dart';
import '../../../../core/utils/app_utility.dart';
import '../cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SplashCubit>()..getToken(),
      child: Scaffold(
        body: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return AppUtility.getLoadingWidgetByStatus(state.status);
          },
        ),
      ),
    );
  }
}
