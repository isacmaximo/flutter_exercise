import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/custom_card.dart';

class FooterCard extends StatelessWidget {
  const FooterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 100,
      backgroundColor: loadingBorderColor.withValues(alpha: 0.1),
      radius: BorderRadius.circular(32),
      child: Center(
        child: Text('Read more', style: AppTextStyle.floatingTitleText),
      ),
    );
  }
}
