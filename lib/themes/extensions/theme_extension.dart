import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  MediaQueryData get _mediaQuery => MediaQuery.of(this);
  ThemeData get _theme => Theme.of(this);
  ColorScheme get colorsScheme => _theme.colorScheme;

  double get width => _mediaQuery.size.width;
  double get height => _mediaQuery.size.height;
}
