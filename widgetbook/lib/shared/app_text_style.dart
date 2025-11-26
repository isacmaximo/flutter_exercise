import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle bodyText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: onSurfaceColor,
    fontFamily: 'Aktiv Grotesk',
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: surfaceColor,
    fontFamily: 'Aktiv Grotesk',
  );

  static const TextStyle floatingTitleText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w800,
    color: Colors.black,
    fontFamily: 'Aktiv Grotesk',
  );

  static const TextStyle cardTitleText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: onSurfaceColor,
    fontFamily: 'Aktiv Grotesk',
  );

  static const TextStyle floatingSubtitleText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: onSurfaceVariantColor,
    fontFamily: 'Aktiv Grotesk',
  );

  static const TextStyle cardSubtitleText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: onSurfaceVariantColor,
    fontFamily: 'Aktiv Grotesk',
  );
}
