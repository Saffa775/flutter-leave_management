// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/ApprovedModel.dart';
import 'package:leave_manegment/MODELS/StudentApplyModel.dart';
import 'package:leave_manegment/OTHER/staticdata.dart';
import 'package:uuid/uuid.dart';

// ignore: must_be_immutable
class StudentLeaveRequest extends StatefulWidget {
 
  StudentLeaveRequest({super.key});

  @override
  State<StudentLeaveRequest> createState() => _StudentLeaveRequestState();
}

class _StudentLeaveRequestState extends State<StudentLeaveRequest> {
  List<StudentApplyModel> studentreq = [];
  void getreq() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection("Student-LeaveApplications")
        .get();

    for (var data in snapshot.docs) {
      StudentApplyModel modelStudentLeaveRequests =
          StudentApplyModel.fromMap(data.data() as Map<String, dynamic>);
      setState(() {
        studentreq.add(modelStudentLeaveRequests);
        print("length of requests");

        print(studentreq.length);
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
                          "Student Leave Requests",
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
                      itemCount: studentreq.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height * 0.6,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                            color:
                                                Color.fromARGB(255, 6, 47, 80),
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
                                                    studentreq[index]
                                                        .studentname!,
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
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
                                            "Roll Number:",
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
                                            studentreq[index]
                                                .studentrollnumber!,
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
                                            studentreq[index].studentdept!,
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
                                            "Semester:",
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
                                            studentreq[index].studentsemester!,
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
                                            "Session:",
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
                                            studentreq[index].studentsession!,
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
                                            "Leave Status:",
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
                                            studentreq[index]
                                                .studentleavestatus!,
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
                                            studentreq[index]
                                                .studentleaveduration!,
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
                                            studentreq[index].applydate!,
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
                                      InkWell(
                                        onTap: () {
                                          var AId = Uuid();
                                          String id = AId.v4();

                                          ApprovedModel model = ApprovedModel(
                                              studentname:
                                                  studentreq[index].studentname,
                                              studentid:
                                                  studentreq[index].studentid,
                                              adminname: StaticData
                                                  .modelapprove!.adminname,
                                              adminid: id);

                                          FirebaseFirestore.instance /////
                                              .collection("Approved")
                                              .doc(id)
                                              .set(model.toMap());
                                          var AId1 = Uuid();
                                          String id2 = AId1.v4();

                                          ApprovedModel modelapprove =
                                              ApprovedModel(
                                                  adminname: StaticData
                                                      .modelapprove!.adminname,
                                                  adminid: StaticData
                                                      .modelapprove!.adminid,
                                                  studentname: studentreq[index]
                                                      .studentname,
                                                  studentid: id2);

                                          FirebaseFirestore.instance /////
                                              .collection("Approved")
                                              .doc(id2)
                                              .set(modelapprove.toMap());
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: height * 0.07,
                                          width: width * 0.1,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color:
                                                Color.fromARGB(255, 6, 47, 80),
                                          ),
                                          child: Text(
                                            "Approve",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: height * 0.07,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(255, 6, 47, 80),
                                        ),
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
