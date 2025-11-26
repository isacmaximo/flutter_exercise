import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_sizes.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Border? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;

  const CustomCard({
    super.key,
    required this.child,
    required this.width,
    required this.height,
    this.border,
    this.boxShadow,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: surfaceColor,
        borderRadius: BorderRadius.circular(cardRadius),
        border: border,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
