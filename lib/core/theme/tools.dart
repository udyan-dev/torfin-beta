// Copyright IBM Corp. 2016, 2023
//
// This source code is licensed under the Apache-2.0 license found in the
// LICENSE file in the root directory of this source tree.

import 'package:flutter/material.dart';

/// Adjust a given color's lightness by a specified percentage
/// Example: color = Color(0xFF1a1a1a) (~10% lightness)
/// adjustLightness(color, 5) => Color with ~15% lightness
Color adjustLightness(Color color, int shift) {
  final HSLColor hsl = HSLColor.fromColor(color);
  double lightnessPercent = hsl.lightness * 100;
  lightnessPercent += shift;
  final double newLightness = lightnessPercent.clamp(0.0, 100.0) / 100.0;
  return hsl.withLightness(newLightness).toColor();
}

/// Adjust a given color's alpha by a specified amount
/// Example: color = Colors.red.withOpacity(1.0)
/// adjustAlpha(color, 0.3) => Color with 30% opacity
Color adjustAlpha(Color color, double alpha) {
  return color.withValues(alpha: alpha);
}

/// Format a given token name into kebab-case for CSS/SCSS
/// Example: "tokenName123" => "token-name-123"
String formatTokenName(String token) {
  final buffer = StringBuffer();

  for (int i = 0; i < token.length; i++) {
    final char = token[i];

    if (RegExp(r'[0-9]').hasMatch(char)) {
      buffer.write('-${token.substring(i)}');
      break;
    }

    if (char == char.toUpperCase()) {
      if (i > 0 && token[i - 1] == token[i - 1].toUpperCase()) {
        // Part of consecutive uppercase (acronym)
        buffer.write(char.toLowerCase());
      } else {
        buffer.write('-${char.toLowerCase()}');
      }
    } else {
      buffer.write(char);
    }
  }

  String result = buffer.toString();
  // Remove leading dash if present
  if (result.startsWith('-')) {
    result = result.substring(1);
  }
  return result;
}
