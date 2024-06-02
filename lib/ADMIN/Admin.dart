// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/ADMIN/ALL-REQUESTS/student-request.dart';
import 'package:leave_manegment/ADMIN/ALL-REQUESTS/teacher-requests.dart';
import 'package:leave_manegment/ADMIN/ALL-USERS/studentusers.dart';
import 'package:leave_manegment/ADMIN/ALL-USERS/teacherusers.dart';
import 'package:leave_manegment/ADMIN/HISTORY/Student-History.dart';
import 'package:leave_manegment/ADMIN/HISTORY/Teacher-History.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-1.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-2.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-3.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-4.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-5.dart';


class MyAdmin extends StatefulWidget {
  const MyAdmin({super.key});

  @override
  State<MyAdmin> createState() => _MyAdminState();
}

class _MyAdminState extends State<MyAdmin> {
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
            child: Row(
              children: [
                Container(
                  height: height,
                  width: width * 0.15,
                  color: const Color.fromARGB(255, 16, 75, 124),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.07,
                          width: width * 0.15,
                          color: const Color.fromARGB(255, 16, 75, 124),
                          child: const Text(
                            "Dashboard",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Container(
                          height: height * 0.071,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 48, 119, 177),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.home,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                const Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.071,
                          width: width * 0.15,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                const Text(
                                  "All Users",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.071,
                          width: width * 0.15,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                const Text(
                                  "Leave Requests",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.071,
                          width: width * 0.15,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                const Text(
                                  "Activity",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.071,
                          width: width * 0.15,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                const Text(
                                  "History",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.071,
                          width: width * 0.15,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                const Text(
                                  "Logout",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 48, 119, 177),
                              borderRadius: BorderRadius.circular(5)),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: height,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 78, 154, 216),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: height * 0.08,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 16, 75, 124),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  "Leave Management System",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: height * 0.08,
                                width: width * 0.1,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 16, 75, 124),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  "Logout",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.4,
                        width: width,
                        // color: Color.fromARGB(255, 78, 154, 216),/////////1st line
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height * 0.38,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(
                                //   color: const Color.fromARGB(255, 16, 75, 124),
                                // )
                              ),
                              child: SizedBox(
                                height: height * 0.38,
                                width: width * 0.4,
                                child: CarouselSlider(

                                    //slider ingredients here//
                                    items: const [
                                      Firstslider(),
                                      SecondSlider(),
                                      ThirdSlider(),
                                      FourthSlider(),
                                      FifthSlider(),
                                    ],
                                    options: CarouselOptions(
                                      height: 300,
                                      aspectRatio: 16 / 9,
                                      viewportFraction: 0.8,
                                      initialPage: 0,
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      autoPlay: true,
                                      autoPlayInterval:
                                          const Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.3,
                                      scrollDirection: Axis.horizontal,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.4,
                              width: width * 0.4,
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.1,
                                    decoration: BoxDecoration(
                                        // color: const Color.fromARGB(
                                        //     255, 16, 75, 124),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      "All Requests",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 16, 75, 124),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: height * 0.3,
                                        width: width * 0.19,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 16, 75, 124),
                                            )),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                     const StudentLeaveRequest()
                                                ));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: height * 0.225,
                                                width: width * 19,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            "images/adminstudent.jpeg"),
                                                        fit: BoxFit.contain)),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: width * 0.2,
                                                  decoration: const BoxDecoration(
                                                      color:
                                                          Color.fromARGB(
                                                              255,
                                                              16,
                                                              75,
                                                              124),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  child: const Text(
                                                    "Student",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: height * 0.3,
                                          width: width * 0.19,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 16, 75, 124),
                                              )),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const TeacherLeaveRequest(),
                                                  ));
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: height * 0.225,
                                                  width: width * 19,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/aminteacher.jpeg"),
                                                          fit: BoxFit.contain)),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: width * 0.2,
                                                    decoration: const BoxDecoration(
                                                        color:
                                                            Color
                                                                .fromARGB(255,
                                                                16, 75, 124),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10))),
                                                    child: const Text(
                                                      "Teacher",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.45,
                        width: width,
                        // color: Color.fromARGB(255, 78, 154, 216),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height * 0.42,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 16, 75, 124),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: height * 0.3,
                                width: width * 0.19,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 16, 75, 124),
                                    )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 16, 75, 124),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "All Users",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      height: height * 0.3,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "images/adminstudent.jpeg"),
                                              fit: BoxFit.contain)),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.25,
                                        // decoration: BoxDecoration(
                                        //     color: const Color.fromARGB(
                                        //         255, 16, 75, 124),
                                        //     borderRadius: BorderRadius.only(
                                        //         bottomLeft: Radius.circular(10),
                                        //         bottomRight:
                                        //             Radius.circular(10))),

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const StudentUser(),
                                                    ));
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: height * 0.06,
                                                width: width * 0.12,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 16, 75, 124),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Text(
                                                  "Students",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const TeacherUser(),
                                                    ));
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: height * 0.06,
                                                width: width * 0.12,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 16, 75, 124),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Text(
                                                  "Teachers",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.42,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 16, 75, 124),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: height * 0.3,
                                width: width * 0.19,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 16, 75, 124),
                                    )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 16, 75, 124),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "History",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      height: height * 0.3,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "images/adminhistory.jpeg"),
                                              fit: BoxFit.contain)),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.25,
                                        // decoration: BoxDecoration(
                                        //     color: const Color.fromARGB(
                                        //         255, 16, 75, 124),
                                        //     borderRadius: BorderRadius.only(
                                        //         bottomLeft: Radius.circular(10),
                                        //         bottomRight:
                                        //             Radius.circular(10))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const StudentLeaveHistory(),
                                                    ));
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: height * 0.06,
                                                width: width * 0.12,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 16, 75, 124),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Text(
                                                  "Students",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const TeacherLeaveHistory(),
                                                    ));
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: height * 0.06,
                                                width: width * 0.12,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 16, 75, 124),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Text(
                                                  "Teachers",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.42,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 16, 75, 124),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: height * 0.3,
                                width: width * 0.19,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 16, 75, 124),
                                    )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        height: height * 0.05,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 16, 75, 124),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "All Activity",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      height: height * 0.3,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "images/adminactivity.jpeg"),
                                              fit: BoxFit.contain)),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.25,
                                        // decoration: BoxDecoration(
                                        //     color: const Color.fromARGB(
                                        //         255, 16, 75, 124),
                                        //     borderRadius: BorderRadius.only(
                                        //         bottomLeft: Radius.circular(10),
                                        //         bottomRight:
                                        //             Radius.circular(10))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              height: height * 0.06,
                                              width: width * 0.12,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 16, 75, 124),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: const Text(
                                                "Students",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: height * 0.06,
                                              width: width * 0.12,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 16, 75, 124),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: const Text(
                                                "Teachers",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
