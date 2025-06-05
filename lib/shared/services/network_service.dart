import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

import '../../core/constants/app_constants.dart';

class NetworkService {
  static final _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  final ValueNotifier<bool> _isConnected = ValueNotifier(true);
  final ValueNotifier<String> _connectionMessage = ValueNotifier(AppConstants.emptyString);
  bool _currentState = true;

  ValueNotifier<bool> get isConnected => _isConnected;
  ValueNotifier<String> get connectionMessage => _connectionMessage;
  bool get hasConnection => _currentState;

  Future<void> initialize() async {
    _subscription = _connectivity.onConnectivityChanged.listen(
      _handleConnectivityResults,
      onError: (_) => _updateConnectionState(false),
    );

    try {
      final results = await _connectivity.checkConnectivity();
      _handleConnectivityResults(results);
    } catch (_) {
      _updateConnectionState(false);
    }
  }

  void _updateConnectionState(bool isConnected) {
    if (_currentState == isConnected) return;

    _currentState = isConnected;
    _isConnected.value = isConnected;
    _connectionMessage.value = isConnected
        ? AppConstants.connectionRestoredMessage
        : AppConstants.noConnectionMessage;
  }

  void _handleConnectivityResults(List<ConnectivityResult> results) {
    const connectedTypes = {
      ConnectivityResult.wifi,
      ConnectivityResult.mobile,
      ConnectivityResult.ethernet,
    };

    final isConnected = results.any(connectedTypes.contains);
    _updateConnectionState(isConnected);
  }

  void dispose() {
    _subscription?.cancel();
    _isConnected.dispose();
    _connectionMessage.dispose();
  }
}
