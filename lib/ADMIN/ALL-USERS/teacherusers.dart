// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/Teacher-Model.dart';

class TeacherUser extends StatefulWidget {
  const TeacherUser({super.key});

  @override
  State<TeacherUser> createState() => _TeacherUserState();
}

class _TeacherUserState extends State<TeacherUser> {
  List<TeacherModel> alluser = [];
  void getUsers() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection("Teacher-Registration")
        .get();

    for (var data in snapshot.docs) {
      TeacherModel modelTeacherUsers =
          TeacherModel.fromMap(data.data() as Map<String, dynamic>);
      setState(() {
        alluser.add(modelTeacherUsers);
        print("length of  users");

        print(alluser.length);
      });
    }
  }

  @override
  void initState() {
    getUsers();

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
                          "Teacher Users",
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
                  height: height * 0.65,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 6, 47, 80),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: ListView.builder(
                      itemCount: alluser.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height * 0.3,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * 0.06,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Container(
                                        height: height * 0.05,
                                        width: width * 0.3,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.4,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                alluser[index].teachername!,
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
                                            "Email:",
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
                                            alluser[index].teacheremail!,
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
                                            alluser[index].teachercnic!,
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
