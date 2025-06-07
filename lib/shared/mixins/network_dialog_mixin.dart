import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/bindings/injection.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/app_extensions.dart';
import '../../gen/fonts.gen.dart';
import '../services/network_service.dart';
import '../widgets/status_widget.dart';
import '../widgets/text_widget.dart';

mixin NetworkDialogMixin<T extends StatefulWidget> on State<T> {
  static final NetworkService _networkService = di<NetworkService>();
  String _lastMessage = AppConstants.emptyString;
  bool _isDialogShowing = false;

  @override
  void initState() {
    super.initState();
    _networkService.connectionMessage.addListener(_handleNetworkMessageChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        _checkInitialNetworkState());
  }

  @override
  void dispose() {
    _networkService.connectionMessage.removeListener(_handleNetworkMessageChanged);
    super.dispose();
  }

  void _checkInitialNetworkState() {
    if (!mounted) return;

    final message = _networkService.connectionMessage.value;
    final isConnected = _networkService.hasConnection;

    if (!isConnected && message.isNotEmpty && !_isDialogShowing) {
      _lastMessage = message;
      _showNetworkDialog(message);
    }
  }

  void _handleNetworkMessageChanged() {
    if (!mounted) return;

    final message = _networkService.connectionMessage.value;
    if (message.isEmpty || message == _lastMessage) return;

    _lastMessage = message;
    final isConnected = _networkService.hasConnection;

    if (isConnected) {
      _hideNetworkDialog();
    } else if (!_isDialogShowing) {
      _showNetworkDialog(message);
    }
  }

  void _showNetworkDialog(String message) {
    _isDialogShowing = true;
    final theme = context.theme;
    final isDark = context.isDark;
    final backgroundColor = isDark ? theme.background : IBMColors.red10;
    final dividerColor = isDark ? theme.supportErrorInverse : theme.supportError;

    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: theme.overlay,
      builder: (_) =>
          PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              if (!didPop) {
                SystemNavigator.pop();
              }
            },
            child: Dialog(
              alignment: Alignment.bottomCenter,
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              child: ColoredBox(
                color: backgroundColor,
                child: Row(
                  children: [
                    SizedBox(
                      height: kMinInteractiveDimension,
                      child: VerticalDivider(
                        width: 3,
                        thickness: 3,
                        color: dividerColor,
                      ),
                    ),
                    const SizedBox(width: 14),
                    const StatusWidget.error(size: StatusWidgetSize.medium),
                    const SizedBox(width: 14),
                    Expanded(
                      child: TextWidget(
                        text: message,
                        style: TextStyle(
                          fontSize: 14,
                          color: theme.textPrimary,
                          fontFamily: FontFamily.lexend,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    ).then((_) => _isDialogShowing = false);
  }

  void _hideNetworkDialog() {
    if (_isDialogShowing && mounted) {
      Navigator.of(context).pop();
      _isDialogShowing = false;
    }
  }
}