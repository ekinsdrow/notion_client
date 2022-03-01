import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notion_client/presentation/theme/theme.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  late Animation<int> _animation;
  late AnimationController _animationController;

  var start = 1;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animation = IntTween(
      begin: 1,
      end: 9,
    ).animate(_animationController);

    _animation.addListener(
      () {
        setState(() {
          start = _animation.value;
        });
      },
    );

    _animationController.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _LoaderPainter(
        color: AppTheme.primaryColor,
        startItem: start,
      ),
    );
  }
}

class _LoaderPainter extends CustomPainter {
  final Color color;
  final int startItem;

  _LoaderPainter({
    required this.color,
    required this.startItem,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 30.0;

    for (var i = 9; i > 1; i--) {
      final paint = Paint()
        ..color = color.withAlpha(30 * (i + startItem))
        ..strokeWidth = 5;

      canvas.drawCircle(
        Offset(
          radius * cos(i * 0.785398),
          radius * sin(i * 0.785398),
        ),
        5,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
