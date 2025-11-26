import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_sizes.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final BlendMode? backgroundBlendMode;

  const CustomCard({
    super.key,
    required this.child,
    required this.width,
    required this.height,
    this.border,
    this.boxShadow,
    this.padding,
    this.backgroundColor,
    this.backgroundBlendMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? surfaceColor,
        borderRadius: BorderRadius.circular(cardRadius),
        backgroundBlendMode: backgroundBlendMode,
        border: border,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
