import 'package:flutter/material.dart';

class LoginCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;

    // Offset centerArc = Offset(size.width * .8, size.height * 0);
    Path path = new Path()
      ..moveTo(0, y * .2)
      // ===== OPTION WITH quadraticBezierTo ====== //
      // ..quadraticBezierTo(x * .08, 0, x * .3, y * .2)
      // ..quadraticBezierTo(x * .5, y * .3, x * .7, y * .2)
      // ..quadraticBezierTo(x * .92, 0, x, y * .2)
      // ===== END OPTION WITH quadraticBezierTo ====== //

      ..cubicTo(x * .08, 0, x * .3, y * .23, x * .5, y * .23)
      ..cubicTo(x * .7, y * .23, x * .92, 0, x, y * .2)
      ..lineTo(x, y)
      ..lineTo(0, y)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
