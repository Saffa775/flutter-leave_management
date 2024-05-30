import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/ApplyModel.dart';

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
      StudentApplyModel modelapply=
          StudentApplyModel.fromMap(data.data() as Map<String, dynamic>);
      setState(() {
        allapplication.add(modelapply);
        print("length of  posts");

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
      body: Container(
          height: height,
          width: width,
          color: Colors.amber,
          child: ListView.builder(
              itemCount: allapplication.length,
              itemBuilder: (context, index) {
                return
                    Container(
                      height: height * 0.17,
                      width: width,
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.6,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height * 0.15,
                              width: width * 0.45,
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("student name: ",
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                              fontSize: 16)),
                                      Text(allapplication[index].studentname!,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                  Text(allapplication[index].studentdept!,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      )),
                               
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.25,
                              width: width * 0.4,
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: height * 0.1,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 60,
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    // color: Colors.amberAccent,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Posted time: ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " Total Applications: ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  
                
              })),
    );
  }
}
