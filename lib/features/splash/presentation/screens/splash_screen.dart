import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:torfin/shared/widgets/svg_button.dart';

import '../../../../core/bindings/injection.dart';
import '../../../../core/utils/app_utility.dart';
import '../../../../core/utils/data_state.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/mixins/network_dialog_mixin.dart';
import '../cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with NetworkDialogMixin {
  late final SplashCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = di<SplashCubit>();
    _cubit.getToken();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        body: BlocListener<SplashCubit, SplashState>(
          bloc: _cubit,
          listener: (context, state) {
            if (state.status == DataEnum.success) {
              context.pushReplacementNamed('home');
            }
          },
          child: BlocBuilder<SplashCubit, SplashState>(
            bloc: _cubit,
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppUtility.getLoadingWidgetByStatus(state.status),
                  if (state.status == DataEnum.error) ...[
                    SvgButton(
                      onPressed: _cubit.getToken,
                      path: Assets.images.refresh.path,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
