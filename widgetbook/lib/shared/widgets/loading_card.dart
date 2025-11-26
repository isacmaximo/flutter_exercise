import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:progress_border/progress_border.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_shadows.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/custom_card.dart';

class LoadingCard extends StatelessWidget {
  final double progress;
  const LoadingCard({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomCard(
      width: size.width * 0.9,
      height: 193,
      boxShadow: AppShadows.cardGlowShadow,
      radius: BorderRadius.circular(32),
      border: ProgressBorder.all(
        color: loadingBorderColor,
        backgroundColor: backgroundColor,
        width: 2,
        progress: progress,
      ),

      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Lottie.asset(
            'assets/lottie/searching.json',
            height: 80,
            width: 80,
            repeat: true,
            //options: LottieOptions(enableMergePaths: true),
          ),
          Text('Loading File', style: AppTextStyle.cardTitleText),
          Text('1m 30s', style: AppTextStyle.cardSubtitleText),
        ],
      ),
    );
  }
}
