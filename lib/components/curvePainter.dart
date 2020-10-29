import 'package:FlutterAppTemplate01/components/colors.dart';
import 'package:flutter/material.dart';

class CustomCurve extends CustomPainter  {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = primary;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.10);
    path.quadraticBezierTo(size.width / 2, size.height / 5, size.width, size.height * 0.10);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}