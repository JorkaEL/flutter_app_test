import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class AppTheme {
  static final double padding_5 = 5.0;
  static final double padding_10 = 10.0;
  static final double padding_15 = 15.0;

  static final double radius_5 = 5.0;
  static final double radius_10 = 10.0;
  static final double radius_50 = 50.0;

  static Map<int, Color> colorCodes = {
    50: Color.fromRGBO(41, 156, 131, .1),
    100: Color.fromRGBO(41, 156, 131, .2),
    200: Color.fromRGBO(41, 156, 131, .3),
    300: Color.fromRGBO(41, 156, 131, .4),
    400: Color.fromRGBO(41, 156, 131, .5),
    500: Color.fromRGBO(41, 156, 131, .6),
    600: Color.fromRGBO(41, 156, 131, .7),
    700: Color.fromRGBO(41, 156, 131, .8),
    800: Color.fromRGBO(41, 156, 131, .9),
    900: Color.fromRGBO(41, 156, 131, 1),
  };
  static MaterialColor customColor = MaterialColor(0xFF299C83, colorCodes);

  /// Theme utilisé par l'app
  static final ThemeData themeData = ThemeData(
    primarySwatch: customColor,
  );
}
// Color.fromRGBO(41, 156, 131, 0)
