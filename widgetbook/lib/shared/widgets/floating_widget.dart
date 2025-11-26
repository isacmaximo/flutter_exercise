import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/custom_card.dart';

class FloatingWidget extends StatelessWidget {
  const FloatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0, // intensidade horizontal
            sigmaY: 10.0, // intensidade vertical
          ),

          child: Container(
            width: double.infinity,
            height: 84,
            color: backgroundColor.withValues(alpha: 0.2),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomCard(
                height: 68,
                padding: EdgeInsets.symmetric(horizontal: 12),
                radius: BorderRadius.circular(32),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomCard(
                      width: 48,
                      height: 48,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/ff_logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Form&Fun', style: AppTextStyle.floatingTitleText),
                        Text(
                          'formandfun.co',
                          style: AppTextStyle.floatingSubtitleText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ), // importante para ver o blur
          ),
        ),
      ),
    );
  }
}
