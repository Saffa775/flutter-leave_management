import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UperPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var paint = Paint()..color =const Color.fromARGB(255, 14, 75, 124);
    var paint1 = Paint()
      ..color =Color.fromARGB(255, 50, 115, 167);
     

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, height * 0.7);

    path.quadraticBezierTo(
        width * 0.3, height * 0.8, width * 0.3, height * 0.0);

    path.close();
    canvas.drawPath(path, paint);

    Path path1 = Path();
    path1.moveTo(width * 0.05, 0);

    path1.quadraticBezierTo(width * 0.32, height*0.8, width*0.6, 0);

    path1.close();
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return false;
  }
}
