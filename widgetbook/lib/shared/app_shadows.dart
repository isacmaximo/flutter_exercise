import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';

abstract class AppShadows {
  static List<BoxShadow> cardGlowShadow = [
    BoxShadow(
      color: loadingBorderColor.withValues(alpha: 0.3),
      blurRadius: 20,
      spreadRadius: 0,
      offset: const Offset(0, 10),
    ),

    BoxShadow(
      color: loadingGlowColor,
      blurRadius: 4,
      spreadRadius: 0,
      offset: const Offset(0, 1),
    ),
  ];
}
