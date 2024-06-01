import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/ADMIN/Admin-Signup.dart';
import 'package:leave_manegment/ADMIN/Admin.dart';
import 'package:leave_manegment/MODELS/AdminModel.dart';

import 'package:leave_manegment/OTHER/staticdata.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Passwordcontroller = TextEditingController();
    final Emailcontroller = TextEditingController();

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
                  Padding(
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
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                    ),
                                    controller: Emailcontroller,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      // fillColor: Colors.red,
                                      // filled: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      prefixIcon: Icon(
                                        Icons.book,
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
                                          .collection("Admin-Registration")
                                          .where("adminemail",
                                              isEqualTo: Emailcontroller.text)
                                          .where("adminpassword",
                                              isEqualTo:
                                                  Passwordcontroller.text)
                                          .get();
                                  if (Snapshot.docs.isEmpty) {
                                    print("Invalid email or password");
                                  } else {
                                    AdminModel modeladmin = AdminModel.fromMap(
                                        Snapshot.docs[0].data()
                                            as Map<String, dynamic>);
                                    print("Login Succesfull");
                                    print(modeladmin.toString());
                                    StaticData.modeladmin = modeladmin;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyAdmin(),
                                        ));
                                  }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: height * 0.06,
                                  width: width * 0.1,
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
                                        width: width * 0.4,
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
                                        width: width * 0.3,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      AdminSignup(),
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
