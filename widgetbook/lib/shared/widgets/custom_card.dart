import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? radius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final BlendMode? backgroundBlendMode;
  final DecorationImage? image;
  final BoxShape? shape;

  const CustomCard({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius,
    this.border,
    this.boxShadow,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.backgroundBlendMode,
    this.image,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? surfaceColor,
        borderRadius: radius,
        shape: shape ?? BoxShape.rectangle,
        backgroundBlendMode: backgroundBlendMode,
        border: border,
        boxShadow: boxShadow,
        image: image,
      ),
      child: child,
    );
  }
}
