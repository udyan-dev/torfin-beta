import 'package:flutter/material.dart';

import 'storage_service.dart';

class ThemeService {
  ThemeService({required this.storageService});

  final StorageService storageService;
  ValueNotifier<ThemeMode>? _themeMode;

  ValueNotifier<ThemeMode> get themeMode {
    if (_themeMode == null) {
      throw StateError(
          'ThemeService not initialized. Call initialize() first.');
    }
    return _themeMode!;
  }

  Future<void> initialize() async {
    if (_themeMode != null) return;

    final theme = await storageService.getTheme();
    _themeMode = ValueNotifier(theme);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final notifier = _themeMode;
    if (notifier == null) {
      throw StateError(
          'ThemeService not initialized. Call initialize() first.');
    }
    if (notifier.value == mode) return;
    notifier.value = mode;
    await storageService.setTheme(mode);
  }

  void dispose() {
    _themeMode?.dispose();
    _themeMode = null;
  }
}
