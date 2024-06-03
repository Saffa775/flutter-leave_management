// ignore_for_file: non_constant_identifier_names, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/Student-Model.dart';
import 'package:leave_manegment/STUDENT/Student-Login.dart';
import 'package:uuid/uuid.dart';

class StudentsSignUp extends StatefulWidget {
  const StudentsSignUp({super.key});

  @override
  State<StudentsSignUp> createState() => _StudentsSignUpState();
}

class _StudentsSignUpState extends State<StudentsSignUp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Fullnamecontroller = TextEditingController();
    final RollNumbercontroller = TextEditingController();
    final Emailcontroller = TextEditingController();
    final Passwordcontroller = TextEditingController();
    final Confirmpasswordcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: const Color.fromARGB(255, 6, 47, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.09,
                width: width,
                // color: Colors.amber,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "create your account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.75,
                width: width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.6,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
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
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                ),
                                controller: Fullnamecontroller,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // fillColor: Colors.red,
                                  // filled: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                  hintText: 'Name',
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
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                ),
                                controller: Emailcontroller,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // fillColor: Colors.red,
                                  // filled: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Icon(
                                    Icons.email,
                                  ),
                                  hintText: 'Email',
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
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                ),
                                controller: RollNumbercontroller,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // fillColor: Colors.red,
                                  // filled: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Icon(
                                    Icons.book,
                                  ),
                                  hintText: 'Roll Number',
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
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                ),
                                controller: Passwordcontroller,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // fillColor: Colors.red,
                                  // filled: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Icon(
                                    Icons.password,
                                  ),
                                  hintText: "Create Password",
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
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                ),
                                controller: Confirmpasswordcontroller,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  // fillColor: Colors.red,
                                  // filled: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Icon(
                                    Icons.password,
                                  ),
                                  hintText: 'Confirm Password',
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
                            onTap: () {
                              var id = const Uuid();
                              String uid = id.v4();
                              StudentModel model = StudentModel(
                                studentemail: Emailcontroller.text,
                                studentid: uid,
                                studentname: Fullnamecontroller.text,
                                studentpassword: Passwordcontroller.text,
                                studentrollnumber: RollNumbercontroller.text,
                                leavecount: 0
                              );
                              FirebaseFirestore.instance
                                  .collection("Student-Registration")
                                  .doc(uid)
                                  .set(model.toMap());

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const StudentLogin(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: height * 0.06,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 6, 47, 80),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  height: height * 0.05,
                                  width: width * 0.5,
                               
                                  child: const Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 6, 47, 80),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: height * 0.05,
                                  width: width * 0.2,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const StudentLogin()));
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 61, 137, 199),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    ////////
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
