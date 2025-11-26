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
      painter: ProgressBorderPainter(progress: widget.progress),
      child: widget.child,
    );
  }
}

class ProgressBorderPainter extends CustomPainter {
  final double progress;

  ProgressBorderPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final r = cardRadius;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(r)));

    // Pinta a borda de fundo (sem preenchimento)
    final bgPaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawPath(path, bgPaint);

    // Pinta a borda de progresso
    final paint = Paint()
      ..color = loadingBorderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    // Desenha o progresso iniciando do topo (12h) em sentido horário
    final w = size.width;
    final h = size.height;

    final progressPath = Path()
      ..moveTo(w / 2, 0)
      ..lineTo(w - r, 0)
      ..arcToPoint(Offset(w, r), radius: Radius.circular(r), clockwise: true)
      ..lineTo(w, h - r)
      ..arcToPoint(
        Offset(w - r, h),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..lineTo(r, h)
      ..arcToPoint(
        Offset(0, h - r),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..lineTo(0, r)
      ..arcToPoint(Offset(r, 0), radius: Radius.circular(r), clockwise: true)
      ..lineTo(w / 2, 0);

    final metrics = progressPath.computeMetrics().first;
    final length = metrics.length * progress;
    final extract = metrics.extractPath(0, length, startWithMoveTo: true);

    canvas.drawPath(extract, paint);
  }

  @override
  bool shouldRepaint(covariant ProgressBorderPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
