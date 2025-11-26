import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/custom_card.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.all(8),
      radius: BorderRadius.circular(32),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: CustomCard(
              radius: BorderRadius.circular(24),
              height: 200,
              image: DecorationImage(
                image: AssetImage('assets/images/ff_website.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/icon_html.svg',
                  height: 32,
                  width: 32,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Form&Fun Landing Page',
                      style: AppTextStyle.cardTitleText,
                    ),
                    Text('HTML', style: AppTextStyle.cardSubtitleText),
                  ],
                ),
                Spacer(),
                CustomCard(
                  width: 84,
                  height: 48,
                  radius: BorderRadius.circular(32),
                  backgroundColor: onSurfaceColor,
                  child: Center(
                    child: Text('View', style: AppTextStyle.buttonText),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
