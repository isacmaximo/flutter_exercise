import 'package:flutter/material.dart';
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_sizes.dart';

class ProgressBorderCard extends StatefulWidget {
  final double progress; // 0.0 → 1.0
  final Widget child;
  const ProgressBorderCard({
    super.key,
    required this.progress,
    required this.child,
  });

  @override
  State<ProgressBorderCard> createState() => _ProgressBorderCardState();
}

class _ProgressBorderCardState extends State<ProgressBorderCard> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: ProgressBorderPainter(progress: widget.progress),
      child: widget.child,
    );
  }
}

class ProgressBorderPainter extends CustomPainter {
  final double progress;

  ProgressBorderPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = 2.0;
    final inset = stroke / 2;
    final rect = Rect.fromLTWH(
      inset,
      inset,
      size.width - stroke,
      size.height - stroke,
    );
    final r = (cardRadius - inset).clamp(0.0, cardRadius).toDouble();

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(r)));

    final bgPaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    stroke;

    canvas.drawPath(path, bgPaint);

    // Pinta a borda de progresso
    final paint = Paint()
      ..color = loadingBorderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    // Desenha o progresso iniciando do topo (12h) e seguindo horário, como borda interna
    final left = rect.left;
    final top = rect.top;
    final right = rect.right;
    final bottom = rect.bottom;

    final progressPath = Path()
      ..moveTo((left + right) / 2, top)
      ..lineTo(right - r, top)
      ..arcToPoint(
        Offset(right, top + r),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..lineTo(right, bottom - r)
      ..arcToPoint(
        Offset(right - r, bottom),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..lineTo(left + r, bottom)
      ..arcToPoint(
        Offset(left, bottom - r),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..lineTo(left, top + r)
      ..arcToPoint(
        Offset(left + r, top),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..lineTo((left + right) / 2, top);

    final metrics = progressPath.computeMetrics().first;
    final length = metrics.length * progress;
    final extract = metrics.extractPath(0, length, startWithMoveTo: true);

    canvas.drawPath(extract, paint);
  }

  @override
  bool shouldRepaint(covariant ProgressBorderPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
