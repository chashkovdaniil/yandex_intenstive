import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/colors.dart';

/// Something wrong is here
/// in progress
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    var r = size.height * 0.3;
    var R = size.height * 1.4;
    var w_shift = size.width * 0.01;

    var path = Path()
      ..lineTo(0, size.height - r)
      ..quadraticBezierTo(0 + r - sqrt(2) / 2 * r,
          size.height - r + sqrt(2) / 2 * r, r, size.height)
      // lower semicircle
      ..lineTo(R + r - sqrt(R * R - size.height * size.height) + w_shift,
          size.height)
      ..quadraticBezierTo(
          r + R + w_shift,
          R + r,
          r + R + sqrt(R * R - size.height * size.height) + w_shift,
          size.height)
      ..lineTo(size.width - r, size.height)
      ..quadraticBezierTo(size.width - r + sqrt(2) / 2 * r,
          size.height - r + sqrt(2) / 2 * r, size.width, size.height - r)
      ..lineTo(size.width, r - size.height)
      ..quadraticBezierTo(size.width - r + sqrt(2) / 2 * r,
          r - size.height - sqrt(2) / 2 * r, size.width - r, -size.height)
      // upper semicircle
      ..lineTo(R + r + sqrt(R * R - size.height * size.height) + w_shift,
          -size.height)
      ..quadraticBezierTo(
          r + R + w_shift,
          -R - r,
          r + R - sqrt(R * R - size.height * size.height) + w_shift,
          -size.height)
      ..lineTo(r, -size.height)
      ..quadraticBezierTo(r - sqrt(2) / 2 * r,
          r - size.height - sqrt(2) / 2 * r, 0, r - size.height)
      ..lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}