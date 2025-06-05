import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/app_constants.dart';

class StorageService {
  static SharedPreferences? _prefs;
  static bool _isInitialized = false;

  StorageService();

  static Future<void> _ensureInitialized() async {
    if (_isInitialized) return;
    _prefs ??= await SharedPreferences.getInstance();
    _isInitialized = true;
  }

  Future<T?> _get<T>(String key) async {
    await _ensureInitialized();
    return _prefs!.get(key) as T?;
  }

  Future<bool> _set<T>(String key, T value) async {
    await _ensureInitialized();
    final prefs = _prefs!;

    return switch (T) {
      const (String) => await prefs.setString(key, value as String),
      const (int) => await prefs.setInt(key, value as int),
      const (bool) => await prefs.setBool(key, value as bool),
      const (double) => await prefs.setDouble(key, value as double),
      const (List<String>) => await prefs.setStringList(key, value as List<String>),
      _ => throw StorageException('${AppConstants.unsupportedTypeError}: ${T.runtimeType}'),
    };
  }

  Future<String> getToken() async {
    final token = await _get<String>(AppConstants.tokenKey);
    return token ?? AppConstants.emptyString;
  }

  Future<bool> setToken(String token) => _set(AppConstants.tokenKey, token);

  Future<ThemeMode> getTheme() async {
    final index = await _get<int>(AppConstants.themeKey);
    if (index == null) return ThemeMode.system;

    final clampedIndex = index.clamp(0, ThemeMode.values.length - 1);
    return ThemeMode.values[clampedIndex];
  }

  Future<bool> setTheme(ThemeMode theme) => _set(AppConstants.themeKey, theme.index);

  Future<bool> clearToken() => _set(AppConstants.tokenKey, AppConstants.emptyString);

  Future<bool> clearAll() async {
    await _ensureInitialized();
    return await _prefs!.clear();
  }
}

class StorageException implements Exception {
  final String message;

  const StorageException(this.message);

  @override
  String toString() => '${AppConstants.storageExceptionPrefix}$message';
}
