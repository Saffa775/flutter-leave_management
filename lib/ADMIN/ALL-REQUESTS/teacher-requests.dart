// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/TeacherApplyModel.dart';

class TeacherLeaveRequest extends StatefulWidget {
  const TeacherLeaveRequest({super.key});

  @override
  State<TeacherLeaveRequest> createState() => _TeacherLeaveRequestState();
}

class _TeacherLeaveRequestState extends State<TeacherLeaveRequest> {
  List<TeacherApplyModel> teachertreq = [];
  void getreq() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection("Teacher-LeaveApplications")
        .get();

    for (var data in snapshot.docs) {
      TeacherApplyModel modelTeacherLeaveRequests =
          TeacherApplyModel.fromMap(data.data() as Map<String, dynamic>);
      setState(() {
        teachertreq.add(modelTeacherLeaveRequests);
        print("length of requests");

        print(teachertreq.length);
      });
    }
  }

  @override
  void initState() {
    getreq();

    super.initState();
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.3,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 47, 80),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width * 0.6,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: height * 0.1,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        height: height * 0.12,
                        width: width * 0.7,
                        child: Text(
                          "Teacher Leave Requests",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.65,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 6, 47, 80),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: ListView.builder(
                      itemCount: teachertreq.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height * 0.5,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: height * 0.06,
                                        width: width * 0.2,
                                        decoration: BoxDecoration(
                                           color: Color.fromARGB(255, 6, 47, 80),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                          child: Container(
                                            height: height * 0.05,
                                            width: width * 0.3,
                                          // color: Color.fromARGB(255, 6, 47, 80),
                                            child: Container(
                                              height: height * 0.05,
                                              width: width * 0.4,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    teachertreq[index]
                                                        .teachername!,
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                            color: Colors.white
                                                      ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height * 0.1,
                                        width: width * 0.2,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.6,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.2,
                                          child: Text(
                                            "CNIC:",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.3,
                                          child: Text(
                                            teachertreq[index]
                                                .teacherCNIC!,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 47, 80)),
                                          ),
                                        ),

                                        /////////
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.65,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.2,
                                          child: Text(
                                            "department:",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.3,
                                          child: Text(
                                            teachertreq[index].teacherdept!,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 47, 80)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.65,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.2,
                                          child: Text(
                                            "Leave Status",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.3,
                                          child: Text(
                                            teachertreq[index].teacherleavestatus!,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 47, 80)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.65,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.2,
                                          child: Text(
                                            "Leave Duration:",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.3,
                                          child: Text(
                                            teachertreq[index].teacherleaveduration!,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 47, 80)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.65,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.2,
                                          child: Text(
                                            "Applied on: ",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: height * 0.05,
                                          width: width * 0.3,
                                          child: Text(
                                            teachertreq[index]
                                                .teacherapplydate!,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 47, 80)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                               
                             
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: height * 0.07,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 6, 47, 80),),
                                        child: Text(
                                          "Approve",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                       Container(
                                        alignment: Alignment.center,
                                        height: height * 0.07,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 6, 47, 80),),
                                        child: Text(
                                          "Reject",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            )),
      ),
    );
  }
}
