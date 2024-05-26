import 'package:flutter/material.dart';
import 'package:leave_manegment/PAINTERS/Lower-Painter-Dashboard.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height * 0.3,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: height * 0.06,
                      width: width,
                      // color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Color.fromARGB(255, 6, 47, 80),
                            ),
                            Icon(Icons.more_vert,
                                size: 30,
                                color: Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: height * 0.06,
                      width: width,
                      // color: Colors.amber,
                      child: Text(
                        "Welcome to Dashboard",
                        style: TextStyle(
                            color: Color.fromARGB(
                              255,
                              6,
                              47,
                              80,
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    Container(
                      height: height * 0.15,
                      width: width,
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: height * 0.62,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Container(
                      height: height * 0.2,
                      width: width,
                      color: Colors.grey[200],
                      child: CustomPaint(
                        painter: LowerPainter(),
                      ),
                    ),
                  ),///////////////////////

                  Padding(
                    padding:  EdgeInsets.only(top: height*0.02,left: width*0.04),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.15,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                               
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage("images/applyleave.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.04,
                            width: width * 0.5,
                            child: Text(
                              "Apply for leave",
                              style: TextStyle(
                                color: Color.fromARGB(255, 6, 47, 80),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                    Padding(
                    padding:  EdgeInsets.only(top: height*0.02,left: width*0.5),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.15,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                               
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage("images/applyleave.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.04,
                            width: width * 0.5,
                            child: Text(
                              "Apply for leave",
                              style: TextStyle(
                                color: Color.fromARGB(255, 6, 47, 80),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                   Padding(
                      padding:  EdgeInsets.only(top: height*0.24,left: width*0.04),
                     child: Container(
                        height: height * 0.2,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.15,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                 
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage("images/applyleave.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: height * 0.04,
                              width: width * 0.5,
                              child: Text(
                                "Apply for leave",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                   ),
                     Padding(
                      padding:  EdgeInsets.only(top: height*0.24,left: width*0.5),
                     child: Container(
                        height: height * 0.2,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.15,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                 
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage("images/applyleave.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: height * 0.04,
                              width: width * 0.5,
                              child: Text(
                                "Apply for leave",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                   ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
