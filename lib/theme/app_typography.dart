import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// Unravel Typography System
/// Premium editorial style with generous line heights.
/// All methods accept optional color; defaults use high-contrast values.
class AppTypography {
  AppTypography._();

  // ─── Hero Heading (Playfair Display SemiBold) ───
  static TextStyle heroHeading({Color? color}) => GoogleFonts.playfairDisplay(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: color ?? AppColors.textPrimary,
    height: 1.4,
    letterSpacing: -0.5,
  );

  // ─── Section Heading ───
  static TextStyle sectionHeading({Color? color}) =>
      GoogleFonts.playfairDisplay(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.textPrimary,
        height: 1.4,
      );

  // ─── Emotional / Quote Text (Playfair Italic) ───
  static TextStyle emotionalText({Color? color}) => GoogleFonts.playfairDisplay(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: color ?? AppColors.textSecondary,
    height: 1.6,
  );

  // ─── Subtitle (Lora) ───
  static TextStyle subtitle({Color? color}) => GoogleFonts.lora(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: color ?? AppColors.textSecondary,
    height: 1.5,
  );

  // ─── Journal Body (Lora) ───
  static TextStyle journalBody({Color? color}) => GoogleFonts.lora(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: color ?? AppColors.textPrimary,
    height: 1.6,
  );

  // ─── Body Text (Lora) ───
  static TextStyle body({Color? color}) => GoogleFonts.lora(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: color ?? AppColors.textPrimary,
    height: 1.5,
  );

  // ─── UI Label (Inter Light) ───
  static TextStyle uiLabel({Color? color}) => GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: color ?? AppColors.textPrimary,
    height: 1.4,
  );

  // ─── Button Text ───
  static TextStyle buttonText({Color? color}) => GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: color ?? AppColors.textPrimary,
    height: 1.4,
    letterSpacing: 0.3,
  );

  // ─── Caption / Small Text ───
  static TextStyle caption({Color? color}) => GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: color ?? AppColors.textTertiary,
    height: 1.4,
  );

  // ─── OTP Digit ───
  static TextStyle otpDigit({Color? color}) => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: color ?? AppColors.textPrimary,
    height: 1.2,
    letterSpacing: 2,
  );

  // ─── Context-aware versions (use in dark-mode-aware widgets) ───
  static TextStyle heroHeadingC(BuildContext context) =>
      heroHeading(color: AppColors.primary(context));

  static TextStyle sectionHeadingC(BuildContext context) =>
      sectionHeading(color: AppColors.primary(context));

  static TextStyle emotionalTextC(BuildContext context) =>
      emotionalText(color: AppColors.secondary(context));

  static TextStyle subtitleC(BuildContext context) =>
      subtitle(color: AppColors.secondary(context));

  static TextStyle bodyC(BuildContext context) =>
      body(color: AppColors.primary(context));

  static TextStyle journalBodyC(BuildContext context) =>
      journalBody(color: AppColors.primary(context));

  static TextStyle uiLabelC(BuildContext context) =>
      uiLabel(color: AppColors.primary(context));

  static TextStyle buttonTextC(BuildContext context) =>
      buttonText(color: AppColors.primary(context));

  static TextStyle captionC(BuildContext context) =>
      caption(color: AppColors.tertiary(context));
}
