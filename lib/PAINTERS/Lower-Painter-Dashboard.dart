// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LowerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var paint2 = Paint()..color = const Color.fromARGB(255, 33, 92, 140);

    var paint3 = Paint()..color = const Color.fromARGB(255, 6, 47, 80);

    Path path2 = Path();
    path2.moveTo(width, height);
    path2.lineTo(width, height * 0.1);

    path2.quadraticBezierTo(width * 0.7, height * 0.2, width * 0.8, height);

    path2.close();
    canvas.drawPath(path2, paint2);
    /////////////////////path3/////////////////////////

    Path path3 = Path();
    path3.moveTo(width, height);

    path3.quadraticBezierTo(width * 0.67, height * 0.12, width * 0.4, height);

    path3.close();
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   
    // throw UnimplementedError();
    return false;
  }
}
