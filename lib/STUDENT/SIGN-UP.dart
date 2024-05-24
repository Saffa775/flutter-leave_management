import 'package:flutter/material.dart';

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
      body: Container(
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
              width: width * 0.35,
              // color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "SIGN-UP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
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
              child: Center(
                child: Container(
                  height: height * 0.6,
                  width: width * 0.9,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.08,
                        width: width * 0.7,
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Color.fromARGB(255, 6, 47, 80),
                          ),
                          controller: Fullnamecontroller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromARGB(255, 6, 47, 80),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
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
                      Container(
                        height: height * 0.08,
                        width: width * 0.7,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Color.fromARGB(255, 6, 47, 80),
                          ),
                          controller: Emailcontroller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromARGB(255, 6, 47, 80),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
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
                      Container(
                        height: height * 0.08,
                        width: width * 0.7,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Color.fromARGB(255, 6, 47, 80),
                          ),
                          controller: RollNumbercontroller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromARGB(255, 6, 47, 80),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
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
                      Container(
                        height: height * 0.08,
                        width: width * 0.7,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Color.fromARGB(255, 6, 47, 80),
                          ),
                          controller: Passwordcontroller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromARGB(255, 6, 47, 80),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.password,
                            ),
                            hintText: ' Create Password',
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
                      Container(
                        height: height * 0.08,
                        width: width * 0.7,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            
                            color: Color.fromARGB(255, 6, 47, 80),
                          ),
                          controller: Confirmpasswordcontroller,
                          decoration: InputDecoration(
                                                      contentPadding: EdgeInsets.symmetric(vertical: 20),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromARGB(255, 6, 47, 80),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
 prefixIcon: Icon(Icons.verified,),
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
