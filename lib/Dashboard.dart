import 'package:flutter/material.dart';
import 'package:leave_manegment/PAINTERS/Painter-dashboard1.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          height: height,
          width: width,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.25,
                    width: width,
                    color: Colors.white,
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.3,
                      color: Colors.red,
                      child: CustomPaint(
                        painter: MyPainter(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.2, bottom: 0.3),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.5,
                      // color:Color.fromARGB(255, 9, 77, 70),
                      decoration: BoxDecoration(
                          color: Colors.amber, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.2,
                width: width,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
