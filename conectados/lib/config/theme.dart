// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0x99C45151),
    primaryColorDark: Color(0x99000000),
    primaryColorLight: Color(0x33FFD0D0),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Color(0x33F5F5F5),
    fontFamily: 'Futura',
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0x99C45151),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0x99C45151),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0x99C45151),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0x99C45151),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0x99C45151),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0x99C45151),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
    ),
  );
}
