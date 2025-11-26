import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';

class AppTextStyle {
  final String fontFamily = 'Aktiv Grotesk';
  AppTextStyle._();

  static const TextStyle bodyText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: onSurfaceColor,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: onSurfaceColor,
  );

  static const TextStyle cardTitleText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: onSurfaceColor,
  );

  static const TextStyle cardSubtitleText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: onSurfaceVariantColor,
  );
}
