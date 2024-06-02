// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/ADMIN/Admin-Login.dart';
import 'package:leave_manegment/MODELS/AdminModel.dart';
import 'package:uuid/uuid.dart';

class AdminSignup extends StatefulWidget {
  const AdminSignup({super.key});

  @override
  State<AdminSignup> createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Fullnamecontroller = TextEditingController();
    final Emailcontroller = TextEditingController();
    final Passwordcontroller = TextEditingController();
   
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: height * 0.1,
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
                              width: width * 0.3,
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
                              width: width * 0.3,
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
                              width: width * 0.3,
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
                          
                          InkWell(
                            onTap: () {
                              var id = const Uuid();
                              String uid = id.v4();
                              AdminModel modeladmin = AdminModel(
                                adminname: Fullnamecontroller.text,
                                adminid: uid,
                                adminemail: Emailcontroller.text,
                                adminpassword: Passwordcontroller.text,
                               
                              );
                              FirebaseFirestore.instance
                                  .collection("Admin-Registration")
                                  .doc(uid)
                                  .set(modeladmin.toMap());

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AdminLogin(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: height * 0.06,
                              width: width * 0.1,
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
                                  width: width * 0.4,
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
                                  width: width * 0.3,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AdminLogin()));
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
