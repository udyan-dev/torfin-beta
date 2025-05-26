import 'package:flutter/material.dart';
import 'package:torfin/shared/widgets/status_widget.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../shared/widgets/loading_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingWidget.small(
        loadingMessage: AppConstants.success,
        statusType: StatusType.success,
      ),
    );
  }
}
