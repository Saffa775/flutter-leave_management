import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/Teacher-Model.dart';
import 'package:leave_manegment/staticdata.dart';

import 'package:leave_manegment/TEACHER/Sign_Up.dart';
import 'package:leave_manegment/TEACHER/Teacher-Dashboard.dart';

class TeacherLogin extends StatefulWidget {
  const TeacherLogin({super.key});

  @override
  State<TeacherLogin> createState() => _TeacherLoginState();
}

class _TeacherLoginState extends State<TeacherLogin> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Passwordcontroller = TextEditingController();

    final CNICcontroller = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Color.fromARGB(255, 6, 47, 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.09,
                    width: width,
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          "Enter your credential to login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.6,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: height * 0.3,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                    ),
                                    controller: CNICcontroller,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      // fillColor: Colors.red,
                                      // filled: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      prefixIcon: Icon(
                                        Icons.book,
                                      ),
                                      hintText: 'CNIC without dashes',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 6, 47, 80),
                                        fontSize: 12,
                                      ),
                                      labelStyle: TextStyle(color: Colors.red),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                    ),
                                    controller: Passwordcontroller,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      // fillColor: Colors.red,
                                      // filled: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      prefixIcon: Icon(
                                        Icons.password,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 6, 47, 80),
                                        fontSize: 12,
                                      ),
                                      labelStyle: TextStyle(color: Colors.red),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  QuerySnapshot Snapshot =
                                      await FirebaseFirestore.instance
                                          .collection("Teacher-Registration")
                                          .where("teachercnic",
                                              isEqualTo:
                                                  CNICcontroller.text)
                                          .where("teacherpassword",
                                              isEqualTo:
                                                  Passwordcontroller.text)
                                          .get();
                                  if (Snapshot.docs.isEmpty) {
                                    print("Invalid cnic or password");
                                  } else {
                                    TeacherModel model = TeacherModel.fromMap(
                                        Snapshot.docs[0].data()
                                            as Map<String, dynamic>);
                                    print("Login Succesfull");
                                    print(model.toString());
                                    StaticData.modelt = model;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherDashboard(),
                                        ));
                                  }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            height: height * 0.2,
                            width: width,
                            // color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.7,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        height: height * 0.05,
                                        width: width * 0.5,
                                        child: Text(
                                          "Don't have an account?",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 6, 47, 80),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        height: height * 0.05,
                                        width: width * 0.2,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      TeacherSignUp(),
                                                ));
                                          },
                                          child: Text(
                                            "Sign Up",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 61, 137, 199),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.7),
              child: Container(
                height: height * 0.1,
                width: width * 0.2,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/signup.jpeg"),
                        fit: BoxFit.contain)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
