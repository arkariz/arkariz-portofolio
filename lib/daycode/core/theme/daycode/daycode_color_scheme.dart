import 'package:flutter/material.dart';

final daycodeLightColorScheme = ColorScheme.light(
  primary: Color(0xFF000000),
  onPrimary: Color(0xFFFFFFFF),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF1A1A1A),
  onSurfaceVariant: Color.fromARGB(255, 247, 246, 247),
  secondary: Color.fromARGB(255, 121, 119, 119),
  onSecondary: Color(0xFFF9F9F9),
  outline: Color(0xFFEAEAEA),
);

final daycodeDarkColorScheme = ColorScheme.dark(
  primary: Color(0xFFFFFFFF),
  onPrimary: Color(0xFF121212),
  surface: Color(0xFF1E1E1E),
  onSurface: Color(0xFFFAFAFA),
  onSurfaceVariant: Color.fromARGB(255, 41, 41, 41),
  secondary: Color(0xFFB3B3B3),
  onSecondary: Color(0xFF121212),
  outline: Color(0xFF2A2A2A),
);

class DaycodeGradient {

  static LinearGradient get sample => const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Colors.black, Colors.white],
  );
} 