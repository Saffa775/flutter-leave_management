import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/AdminModel.dart';
import 'package:leave_manegment/MODELS/ApplyModel.dart';

import 'package:leave_manegment/staticdata.dart';
import 'package:uuid/uuid.dart';

// ignore: must_be_immutable
class ApplyLeave extends StatefulWidget {
  AdminModel modeladmin;
  ApplyLeave({super.key, required this.modeladmin});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

// class ListItem {
//   int value;
//   String name;

//   ListItem(this.value, this.name);
// }

@override
class _ApplyLeaveState extends State<ApplyLeave> {
  var height, width;

  void initState() {
    print(widget.modeladmin);
    super.initState();
  }

  final fullnamecontroller = TextEditingController();
  final rollNumbercontroller = TextEditingController();
  final departmentcontroller = TextEditingController();
  final sessioncontroller = TextEditingController();
  final leavestatuscontroller = TextEditingController();
  final semestercontroller = TextEditingController();
  final leavedurationcontroller = TextEditingController();
  // List<ListItem> _dropdownItems = [
  //   ListItem(1, "Plumber"),
  //   ListItem(2, "Painter"),
  //   ListItem(3, "Carpanter"),
  //   ListItem(4, "electrician")
  // ];
  // List<DropdownMenuItem<ListItem>>? _dropdownMenuItems;
  // ListItem? _selectedItem;
  // List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
  //   List<DropdownMenuItem<ListItem>> items = [];
  //   for (ListItem listItem in listItems) {
  //     items.add(
  //       DropdownMenuItem(
  //         child: Text(listItem.name),
  //         value: listItem,
  //       ),
  //     );
  //   }
  //   return items;
  // }

  @override
  // void initState() {
  //   _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
  //   print(_dropdownItems.length);
  //   _selectedItem = _dropdownMenuItems![0].value!;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    /////////dropdown/////////

    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: height * 0.2,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 6, 47, 80),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        height: height * 0.12,
                        width: width * 0.4,
                        // color: Colors.amber,
                        child: Text(
                          "Add Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.73,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 6, 47, 80),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: height * 0.7,
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
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 6, 47, 80),
                                  ),
                                  controller: fullnamecontroller,
                                  decoration: InputDecoration(
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
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 6, 47, 80),
                                  ),
                                  controller: rollNumbercontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.book,
                                    ),
                                    hintText: 'Roll number',
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
                                  controller: departmentcontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.book,
                                    ),
                                    hintText: 'Departement',
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
                                  controller: semestercontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.book,
                                    ),
                                    hintText: 'Semester',
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
                                  controller: sessioncontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.password,
                                    ),
                                    hintText: "Session",
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
                                  controller: leavestatuscontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.book,
                                    ),
                                    hintText: 'Status/Reasosn',
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
                                  controller: leavedurationcontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.password,
                                    ),
                                    hintText: 'Duration',
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
                                var reqId = Uuid();
                                String id = reqId.v4();
                                print(widget.modeladmin);

                                StudentApplyModel model = StudentApplyModel(
                                  adminid: id,
                                  adminname: widget.modeladmin.adminname,
                                  studentname: StaticData.modelstu!.studentname,
                                  studentid: StaticData.modelstu!.studentid,
                                  studentdept: departmentcontroller.text,
                                  studentleaveduration:
                                      leavedurationcontroller.text,
                                  studentleavestatus:
                                      leavedurationcontroller.text,
                                  studentrollnumber: rollNumbercontroller.text,
                                  studentsemester: semestercontroller.text,
                                  studentsession: sessioncontroller.text,
                                );
                                print(widget.modeladmin);

                                FirebaseFirestore.instance
                                    .collection("LeaveApplications")
                                    .doc(id)
                                    .set(model.toMap());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: height * 0.06,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ////////
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
