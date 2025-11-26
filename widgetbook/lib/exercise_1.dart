import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
<<<<<<< Updated upstream
=======
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/loading_card.dart';
>>>>>>> Stashed changes

@widgetbook.UseCase(name: 'Default', type: Exercise1)
Widget buildExercise1(BuildContext context) {
  return const Exercise1();
}

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
<<<<<<< Updated upstream
        child: Text(
          'Exercise 1',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
=======
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingCard(progress: _progress),
            const SizedBox(height: 24),
            Slider(
              value: _progress,
              min: 0.0,
              max: 1.0,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
              },
            ),
            const SizedBox(height: 24),
            Text(
              'Progress: ${(_progress * 100).toStringAsFixed(0)}%',
              style: AppTextStyle.bodyText,
            ),
          ],
>>>>>>> Stashed changes
        ),
      ),
    );
  }
}

