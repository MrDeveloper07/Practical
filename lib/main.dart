import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Draw Primitives")),
        body: Center(
            child: CustomPaint(painter: ShapePainter(), size: Size(300, 300))),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    // Draw a line
    canvas.drawLine(Offset(50, 50), Offset(250, 50), paint);

    // Draw a rectangle
    canvas.drawRect(Rect.fromLTWH(50, 90, 200, 100), paint);

    // Draw a circle
    canvas.drawCircle(Offset(150, 250), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
