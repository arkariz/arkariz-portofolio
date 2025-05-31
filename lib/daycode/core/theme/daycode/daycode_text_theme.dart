import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme daycodeTextTheme(ColorScheme colorScheme) => TextTheme(
  displayLarge: GoogleFonts.inter(
    color: colorScheme.onSurface,
  ),
  displayMedium: GoogleFonts.inter(
    color: colorScheme.onSurface,
  ),
  displaySmall: GoogleFonts.inter(
    color: colorScheme.onSurface, 
  ),
  headlineLarge: GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    color: colorScheme.onSurface,
  ),
  headlineMedium: GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    color: colorScheme.onSurface,
  ),
  headlineSmall: GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    color: colorScheme.onSurface,
  ),
  titleLarge: GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    color: colorScheme.onSurface,
  ),
  titleMedium: GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    color: colorScheme.onSurface,
  ),
  bodyLarge: GoogleFonts.inter(
    color: colorScheme.onSurface,
  ),
  bodyMedium: GoogleFonts.inter(
    color: colorScheme.secondary,
  ),
  labelLarge: GoogleFonts.inter(
    color: colorScheme.onSurface,
  ),
  labelMedium: GoogleFonts.inter(
    color: colorScheme.onSurface,
  ),
);
