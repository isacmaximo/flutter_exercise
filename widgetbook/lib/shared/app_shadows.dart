import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';

abstract class AppShadows {
  static List<BoxShadow> cardGlowShadow = [
    BoxShadow(
      color: loadingShadowColor,
      blurRadius: 25,
      spreadRadius: 1,
      offset: const Offset(0, 0),
    ),
  ];
}
