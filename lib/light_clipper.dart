import 'package:flutter/material.dart';

class LightClipper extends CustomClipper<Path> {
  final double screenHeight;
  LightClipper(this.screenHeight);

  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    double control = height >= screenHeight * 0.95 ? 0 : 40;

    final path = Path();

    path.lineTo(0, control);
    path.relativeQuadraticBezierTo(width / 2, -control, width, 0);
    path.relativeLineTo(0, height - control);
    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
