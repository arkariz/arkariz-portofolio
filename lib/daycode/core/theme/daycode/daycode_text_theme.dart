import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';

TextTheme daycodeTextTheme(ColorScheme colorScheme, BuildContext context) {
  final isDesktop = Responsive.isDesktop(context) || Responsive.isTablet(context);

  return TextTheme(
    displayLarge: GoogleFonts.inter(
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 57.sp : 67.sp,
    ),
    displayMedium: GoogleFonts.inter(
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 45.sp : 55.sp,
    ),
    displaySmall: GoogleFonts.inter(
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 36.sp : 46.sp,
    ),
    headlineLarge: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 32.sp : 42.sp,
    ),
    headlineMedium: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 28.sp : 38.sp,
    ),
    headlineSmall: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 24.sp : 34.sp,
    ),
    titleLarge: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 22.sp : 32.sp,
    ),
    titleMedium: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 16.sp : 26.sp,
    ),
    bodyLarge: GoogleFonts.inter(
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 16.sp : 26.sp,
    ),
    bodyMedium: GoogleFonts.inter(
      color: colorScheme.secondary,
      fontSize: isDesktop ? 14.sp : 24.sp,
    ),
    bodySmall: GoogleFonts.inter(
      color: colorScheme.secondary,
      fontSize: isDesktop ? 12.sp : 22.sp,
    ),
    labelLarge: GoogleFonts.inter(
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 14.sp : 24.sp,
    ),
    labelMedium: GoogleFonts.inter(
      color: colorScheme.onSurface,
      fontSize: isDesktop ? 12.sp : 22.sp,
    ),
  );
}
