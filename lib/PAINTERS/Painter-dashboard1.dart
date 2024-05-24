import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var paint = Paint()
      ..color = Color.fromARGB(255, 9, 77, 70)
      
      ..strokeWidth = 20.0;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, height*0.5);

    path.quadraticBezierTo(
        width * 0.05, height*0.7 , width * 0.2, height * 0.7);
    path.quadraticBezierTo(
        width * 0.1, height * 0.5, width*0.3, 0);

    path.close();
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }
  // void paint1(Canvas canvas, Size size) {
  //   var height = size.height;
  //   var width = size.width;
  //   var paint1 = Paint()
  //     ..color = Colors.red
      
  //     ..strokeWidth = 20.0;

  //   Path path1 = Path();
  //   path1.moveTo(width*0.2, 0);
    

  //   path1.quadraticBezierTo(
  //       width * 0.2, height , width, height);
   

  //   path1.close();
  //   canvas.drawPath(path1, paint1);
  //   // TODO: implement paint
  // }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return false;
  }
}






