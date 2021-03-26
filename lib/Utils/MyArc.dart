import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:touchstone_assignment/UI/Bedroom.dart';
import 'dart:math' as math;
class MyArc extends StatelessWidget {
  final double diameter;
  final Color color;
  final int alpha;
  const MyArc({Key key, this.diameter = 200,this.color,this.alpha}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(colors: color.withAlpha(alpha)),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  Color colors;
  MyPainter({Key key,this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = colors;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}