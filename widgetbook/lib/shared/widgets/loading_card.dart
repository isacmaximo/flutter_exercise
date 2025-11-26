import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widgetbook_workspace/shared/app_shadows.dart';
import 'package:widgetbook_workspace/shared/app_sizes.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/custom_card.dart';
import 'package:widgetbook_workspace/shared/widgets/progress_glow_border.dart';

class LoadingCard extends StatelessWidget {
  final double progress;
  const LoadingCard({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ProgressBorderCard(
      progress: progress,
      child: CustomCard(
        width: size.width * 0.8,
        height: size.height * 0.25,
        boxShadow: AppShadows.cardGlowShadow,
        padding: EdgeInsets.all(loadingCardPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Lottie.asset(
              'assets/lottie/searching.json',
              height: 80,
              width: 80,
              repeat: progress != 1.0,
            ),
            Text('Loading File', style: AppTextStyle.cardTitleText),
            Text('1m 30s', style: AppTextStyle.cardSubtitleText),
          ],
        ),
      ),
    );
  }
}
