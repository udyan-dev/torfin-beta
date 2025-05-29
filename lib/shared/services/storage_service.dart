import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/app_constants.dart';

class StorageService {
  static SharedPreferences? _prefs;
  static bool _isInitialized = false;

  StorageService();

  static Future<void> _ensureInitialized() async {
    if (!_isInitialized) {
      _prefs = await SharedPreferences.getInstance();
      _isInitialized = true;
    }
  }

  Future<T?> _get<T>(String key) async {
    await _ensureInitialized();
    return _prefs?.get(key) as T?;
  }

  Future<bool> _set<T>(String key, T value) async {
    await _ensureInitialized();

    return switch (T) {
      const (String) => _prefs!.setString(key, value as String),
      const (int) => _prefs!.setInt(key, value as int),
      const (bool) => _prefs!.setBool(key, value as bool),
      const (double) => _prefs!.setDouble(key, value as double),
      const (List<String>) => _prefs!.setStringList(key, value as List<String>),
      _ => throw StorageException('${AppConstants.unsupportedTypeError}: ${T.runtimeType}'),
    };
  }

  Future<String> getToken() async =>
      (await _get<String>(AppConstants.tokenKey)) ?? '';

  Future<bool> setToken(String token) => _set(AppConstants.tokenKey, token);

  Future<ThemeMode> getTheme() async {
    final index =
        await _get<int>(AppConstants.themeKey) ?? ThemeMode.system.index;
    return ThemeMode.values[index.clamp(0, ThemeMode.values.length - 1)];
  }

  Future<bool> setTheme(ThemeMode theme) =>
      _set(AppConstants.themeKey, theme.index);

  Future<bool> clearToken() async {
    return _set(AppConstants.tokenKey, AppConstants.emptyString);
  }

  Future<bool> clearAll() async {
    await _ensureInitialized();
    return _prefs!.clear();
  }
}

class StorageException implements Exception {
  final String message;

  const StorageException(this.message);

  @override
  String toString() => 'StorageException: $message';
}
