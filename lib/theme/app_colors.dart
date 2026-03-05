import 'package:flutter/material.dart';

/// Unravel Color System
/// Soft premium tones with light and dark mode support.
class AppColors {
  AppColors._();

  // ─── Primary Background Gradient Sets (Light) ───
  static const Color warmLavender = Color(0xFFE8D5E0);
  static const Color softPeach = Color(0xFFF5E0D3);
  static const Color mistBlue = Color(0xFFD6E4EF);
  static const Color paleLilac = Color(0xFFE8DCF0);
  static const Color cream = Color(0xFFF7F3EE);
  static const Color lightBlush = Color(0xFFF5E1E0);

  // ─── Dark Mode Background Colors ───
  static const Color darkBg = Color(0xFF121526);
  static const Color darkBgSecondary = Color(0xFF1B1F3B);
  static const Color darkSurface = Color(0xFF1E2240);
  static const Color darkCard = Color(0xFF252A4A);
  static const Color darkCardBorder = Color(0xFF2E345A);

  // ─── Gradient Presets ───
  static const splashGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [warmLavender, softPeach],
  );

  static const loginGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [mistBlue, paleLilac],
  );

  static const homeGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [cream, lightBlush],
  );

  // ─── Card & Surface (Light) ───
  static const Color cardBackground = Color(0xFFFAF8F6);
  static const Color frostedGlass = Color(0x99FFFFFF);
  static const Color frostedGlassBorder = Color(0x33FFFFFF);

  // ─── Accent Colors (shared across themes) ───
  static const Color sageGreen = Color(0xFF9CB5A0);
  static const Color warmCoral = Color(0xFFE8A598);
  static const Color softIndigo = Color(0xFF9BA4CC);

  // ─── Text Colors (Light – updated for better contrast) ───
  static const Color textPrimary = Color(0xFF2E2E2E);
  static const Color textSecondary = Color(0xFF5F5F5F);
  static const Color textTertiary = Color(0xFF8A8A8A);
  static const Color textOnDark = Color(0xFFF5F5F5);

  // ─── Text Colors (Dark) ───
  static const Color darkTextPrimary = Color(0xFFF5F5F5);
  static const Color darkTextSecondary = Color(0xFFB0B0C0);
  static const Color darkTextTertiary = Color(0xFF7A7A90);

  // ─── Misc (Light) ───
  static const Color divider = Color(0xFFE8E4E0);
  static const Color inputBorder = Color(0xFFDDD8D3);
  static const Color inputFocusBorder = Color(0xFFBDB3C7);
  static const Color shadow = Color(0x0D000000);

  // ─── Misc (Dark) ───
  static const Color darkDivider = Color(0xFF2E345A);
  static const Color darkShadow = Color(0x33000000);

  // ─── Soft Shadows ───
  static List<BoxShadow> get softShadow => [
        BoxShadow(
          color: shadow,
          blurRadius: 24,
          offset: const Offset(0, 8),
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> get subtleShadow => [
        BoxShadow(
          color: shadow,
          blurRadius: 16,
          offset: const Offset(0, 4),
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> get darkSoftShadow => [
        BoxShadow(
          color: darkShadow,
          blurRadius: 24,
          offset: const Offset(0, 8),
          spreadRadius: 0,
        ),
      ];

  // ─── Context-aware helpers ───
  static Color bg(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? darkBg : cream;

  static Color card(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkCard
          : cardBackground;

  static Color cardBorder(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkCardBorder
          : divider;

  static Color primary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkTextPrimary
          : textPrimary;

  static Color secondary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkTextSecondary
          : textSecondary;

  static Color tertiary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkTextTertiary
          : textTertiary;

  static Color dividerColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? darkDivider : divider;

  static Color shadowColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? darkShadow : shadow;

  static List<BoxShadow> cardShadow(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkSoftShadow
          : subtleShadow;

  static Color frosted(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0x44252A4A)
          : frostedGlass;

  static Color frostedBorder(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0x22FFFFFF)
          : frostedGlassBorder;

  static List<Color> bgGradient(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? [darkBg, darkBgSecondary]
          : [cream, lightBlush];

  static List<Color> bgGradientAlt(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? [darkBgSecondary, darkSurface]
          : [paleLilac, cream];
}
