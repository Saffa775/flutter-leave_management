// ignore: file_names
import 'package:flutter/material.dart';
import 'package:leave_manegment/PAINTERS/Lower-Painter-Dashboard.dart';
import 'package:leave_manegment/PAINTERS/Uper-Painter-dashboard1.dart';
import 'package:leave_manegment/STUDENT/Student-Login.dart';
import 'package:leave_manegment/TEACHER/Login.dart';
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
              height: height,
              width: width,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height * 0.2,
                    width: width,
                    child: CustomPaint(
                      painter: UperPainter(),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.2,
                    width: width,
                    child: CustomPaint(
                      painter: LowerPainter(),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: height * 0.15),
            child: SizedBox(
              height: height * 0.67,
              width: width,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height * 0.06,
                    width: width * 0.7,
                    // color: Colors.amber,
                    alignment: Alignment.center,
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 47, 80),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                  InkWell(
                    onTap:  () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const StudentLogin()));
                          },
                    child: Container(
                      height: height * 0.25,
                      width: width * 0.6,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 6, 47, 80),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.18,
                            width: width * 0.6,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                image: const DecorationImage(
                                  image: AssetImage("images/student.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.07,
                            width: width * 0.5,
                            child: const Text(
                              "Student",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.25,
                    width: width * 0.6,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 6, 47, 80),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: InkWell(
                      onTap:  () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TeacherLogin()));
                          },
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.18,
                            width: width * 0.6,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                image: const DecorationImage(
                                  image: AssetImage("images/teacher.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.07,
                            width: width * 0.5,
                            child: const Text(
                              "Departemental Staff",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
