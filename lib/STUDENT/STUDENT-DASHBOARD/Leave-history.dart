// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/StudentApplyModel.dart';

class MyApplyHistory extends StatefulWidget {
  const MyApplyHistory({super.key});

  @override
  State<MyApplyHistory> createState() => _MyApplyHistoryState();
}

class _MyApplyHistoryState extends State<MyApplyHistory> {
  List<StudentApplyModel> allapplication = [];
  void getApplications() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection("Student-LeaveApplications")
        .get();

    for (var data in snapshot.docs) {
      StudentApplyModel modelapply =
          StudentApplyModel.fromMap(data.data() as Map<String, dynamic>);
      setState(() {
        allapplication.add(modelapply);
        print("length of  applications");

        print(allapplication.length);
      });
    }
  }

  @override
  void initState() {
    getApplications();

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
                  height: height * 0.25,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 47, 80),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.12,
                        width: width,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.white,
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
                          "Your leave History",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.7,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 6, 47, 80),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: ListView.builder(
                      itemCount: allapplication.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height * 0.45,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.06,
                                    width: width,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Container(
                                        height: height * 0.05,
                                        width: width * 0.6,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.4,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Departement of ",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 6, 47, 80),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                allapplication[index]
                                                    .studentdept!,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 6, 47, 80)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
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
                                          width: width * 0.3,
                                          child: Text(
                                            "Name:",
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
                                            allapplication[index].studentname!,
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
                                          width: width * 0.3,
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
                                            allapplication[index].studentrollnumber!,
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
                                          width: width * 0.3,
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
                                            allapplication[index].studentsemester!,
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
                                          width: width * 0.3,
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
                                            allapplication[index].studentsession!,
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
                                          width: width * 0.3,
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
                                            allapplication[index].studentleavestatus!,
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
                                          width: width * 0.3,
                                          child: Text(
                                            " Leave Duration:",
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
                                            allapplication[index].studentleaveduration!,
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
                                    height: height * 0.06,
                                    width: width,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Container(
                                        height: height * 0.05,
                                        width: width * 0.6,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.4,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Applied Date : ",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 6, 47, 80),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                              allapplication[index].applydate!,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                   color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
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
