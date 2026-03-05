import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';

/// Animated gradient background that slowly shifts between colors.
/// Automatically adapts to light/dark mode.
class GradientBackground extends StatefulWidget {
  final Widget child;
  final List<Color>? colors;
  final List<Color>? secondaryColors;
  final List<Color>? darkColors;
  final List<Color>? darkSecondaryColors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const GradientBackground({
    super.key,
    required this.child,
    this.colors,
    this.secondaryColors,
    this.darkColors,
    this.darkSecondaryColors,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
  });

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: AppTheme.defaultCurve,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final primaryColors = isDark
        ? (widget.darkColors ?? [AppColors.darkBg, AppColors.darkBgSecondary])
        : (widget.colors ?? [AppColors.cream, AppColors.lightBlush]);

    final altColors = isDark
        ? (widget.darkSecondaryColors ??
            [AppColors.darkBgSecondary, AppColors.darkSurface])
        : (widget.secondaryColors ?? primaryColors.reversed.toList());

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: widget.begin as Alignment,
              end: widget.end as Alignment,
              colors: [
                Color.lerp(primaryColors[0], altColors[0], _animation.value)!,
                Color.lerp(primaryColors[1], altColors[1], _animation.value)!,
              ],
            ),
          ),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
