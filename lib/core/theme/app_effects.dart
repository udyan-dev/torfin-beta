import 'package:flutter/material.dart';

class AppEffects {
  // Shadow Effects
  static const menuShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.3),
    offset: Offset(0, 2),
    blurRadius: 6,
  );

  // Border Effects (Represented by outlines and border sides)
  static const borderSubtle01 = BorderSide(color: Color(0xFFE0E0E0));
  static const borderStrong01 = BorderSide(color: Color(0xFF8D8D8D));
  static const borderStrong01Offset = BorderSide(
    color: Color(0xFF8D8D8D),
    width: 0,
  );

  static const focusInner = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0F62FE), width: 2),
  );
  static const focusOuter = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0F62FE), width: 2),
  );
  static const focusInverseInner = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2),
  );
  static const focusInverseOuter = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2),
  );

  static const selectedInner = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0F62FE), width: 3),
  );
  static const selectedOuter = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0F62FE), width: 3),
  );

  static const selectedInverseInner = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0F62FE), width: 3),
  );
  static const selectedInverseOuter = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0F62FE), width: 3),
  );

  static const errorInner = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDA1E28), width: 2),
  );
  static const errorOuter = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDA1E28), width: 2),
  );

  static const disabledTopBottom = BorderSide(color: Color(0xFFC6C6C6));
  static const disabledTopRightBottom = BorderSide(color: Color(0xFFC6C6C6));
}
