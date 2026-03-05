import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';

/// A frosted glass card with subtle blur and soft shadow.
/// Used throughout Unravel for elevated content areas.
/// Adapts to light/dark mode.
class FrostedGlassCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final double blurAmount;
  final double borderRadius;

  const FrostedGlassCard({
    super.key,
    required this.child,
    this.padding,
    this.width,
    this.height,
    this.blurAmount = 20,
    this.borderRadius = AppTheme.radiusCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: AppColors.cardShadow(context),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurAmount, sigmaY: blurAmount),
          child: Container(
            padding:
                padding ??
                const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
            decoration: BoxDecoration(
              color: AppColors.frosted(context),
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: AppColors.frostedBorder(context),
                width: 1.5,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
