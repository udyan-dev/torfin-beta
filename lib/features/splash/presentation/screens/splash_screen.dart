import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torfin/core/utils/app_extensions.dart';
import 'package:torfin/core/utils/network_dialog_mixin.dart';

import '../../../../core/bindings/injection.dart';
import '../../../../core/utils/app_utility.dart';
import '../../../../core/utils/data_state.dart';
import '../../../../gen/assets.gen.dart';
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
        body: BlocBuilder<SplashCubit, SplashState>(
          bloc: _cubit,
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) => RepaintBoundary(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppUtility.getLoadingWidgetByStatus(state.status),
                  if (state.status == DataEnum.error) ...[
                    const SizedBox(height: 16),
                    _RefreshButton(onPressed: _cubit.getToken),
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

class _RefreshButton extends StatelessWidget {
  const _RefreshButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        Assets.images.refresh.path,
        colorFilter: ColorFilter.mode(
          theme.iconPrimary,
          BlendMode.srcIn,
        ),
        clipBehavior: Clip.none,
      ),
    );
  }
}
