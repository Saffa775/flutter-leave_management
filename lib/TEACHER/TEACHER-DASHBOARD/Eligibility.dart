// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:leave_manegment/OTHER/staticdata.dart';

import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/Approvedrequests.dart';
import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/Rejectedrequests.dart';
import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/pending%20requests.dart';

class TeacherEligibility extends StatefulWidget {
  const TeacherEligibility({super.key});

  @override
  State<TeacherEligibility> createState() => _TeacherEligibilityState();
}

class _TeacherEligibilityState extends State<TeacherEligibility> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Color.fromARGB(255, 6, 47, 80),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: height * 0.7,
                      width: width * 0.7,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 6, 47, 80),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.3,
                            width: width * 0.7,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 6, 47, 80),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherPendingRequests(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Total Leaves Allowed :  5",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherApprovedRequests(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Remainaing Leaves : ${5 - StaticData.modelt!.leavecount!}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherRejectedRequests(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Consumed Leaves :${StaticData.modelt!.leavecount!}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
