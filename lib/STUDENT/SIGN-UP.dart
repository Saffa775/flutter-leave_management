import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/STUDENT/MODELS/Student-Model.dart';
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
    final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: Color.fromARGB(255, 6, 47, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: height * 0.12,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/signup.jpeg"),
                        fit: BoxFit.contain)),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: height * 0.07,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Text(
                        "SIGN-UP",
                        style: TextStyle(
                            color: Color.fromARGB(255, 6, 47, 80),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StudentLogin(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.05,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Color.fromARGB(255, 6, 47, 80),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.7,
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
                      height: height * 0.55,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                                style: TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                ),
                                controller: Fullnamecontroller,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // fillColor: Colors.red,
                                  // filled: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                  hintText: 'Full Name',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
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
                                controller: Emailcontroller,
                                decoration: InputDecoration(
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
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
                                  controller: RollNumbercontroller,
                                  decoration: InputDecoration(
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
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
                                    hintText:"Create Password",
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 6, 47, 80),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
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
                                  controller: Confirmpasswordcontroller,
                                  decoration: InputDecoration(
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
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
                              var id = Uuid();
                              String uid = id.v4();
                              StudentModel model = StudentModel(
                                studentemail: Emailcontroller.text,
                                studentid: uid,
                                studentname: Fullnamecontroller.text,
                                studentpassword: Passwordcontroller.text,
                                studentrollnumber: RollNumbercontroller.text,
                              );
                              print(model.toMap());
                              print(uid);
                              FirebaseFirestore.instance
                                  .collection("Student-Registration")
                                  .doc(uid)
                                  .set(model.toMap());

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StudentLogin(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: height * 0.06,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Register",
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
