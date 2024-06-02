// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/OTHER/Flush.dart';
import 'package:leave_manegment/MODELS/AdminModel.dart';
import 'package:leave_manegment/MODELS/StudentApplyModel.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/Youractivity.dart';

import 'package:leave_manegment/OTHER/staticdata.dart';
import 'package:uuid/uuid.dart';

// ignore: must_be_immutable
class ApplyLeave extends StatefulWidget {
  AdminModel modeladmin;
  ApplyLeave({super.key, required this.modeladmin});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class DepList {
  int value;
  String name;

  DepList(this.value, this.name);
}

@override
class _ApplyLeaveState extends State<ApplyLeave> {
  // ignore: prefer_typing_uninitialized_variables
  var height, width;

  // ignore: annotate_overrides
  void initState() {
    _dropdownMenuItems = buildDropDownMenuItems(
      _dropdownItems,
    );
    _selectedItem1 = _dropdownMenuItems![0].value!;

    ////////////////////////semester///////////////
    _smesterdropdownMenuItems = buildsmesterDropDownMenuItems(
      _smesterdropdownItems,
    );
    _selectedsmesterItem1 = _smesterdropdownMenuItems![0].value!;
    ////////////////////////////session//////////////
    _sessiondropdownMenuItems = buildsessionDropDownMenuItems(
      _sessiondropdownItems,
    );
    _selectedsessionItem1 = _sessiondropdownMenuItems![0].value!;
    ///////////////////reason//////////////
    _reasondropdownMenuItems = buildreasonDropDownMenuItems(
      _reasondropdownItems,
    );
    _selectedreasonItem1 = _reasondropdownMenuItems![0].value!;
    super.initState();
  }

  final fullnamecontroller = TextEditingController();
  final rollNumbercontroller = TextEditingController();
  final departmentcontroller = TextEditingController();
  final sessioncontroller = TextEditingController();
  final leavestatuscontroller = TextEditingController();
  final semestercontroller = TextEditingController();
  final leavedurationcontroller = TextEditingController();
  final List<DepList> _dropdownItems = [
    ///////////departement
    DepList(1, "software engineering"),
    DepList(2, "artificial intelligence"),
    DepList(3, "Data sciences"),
    DepList(4, "information tecgnology")
  ];

  final List<DepList> _smesterdropdownItems = [
    ///////////semester
    DepList(1, "1st smester"),
    DepList(2, "2nd smester"),
    DepList(3, "3rd smester"),
    DepList(4, "4th smester"),
    DepList(5, "5th smester"),
    DepList(6, "6th smester"),
    DepList(7, "7th smester"),
    DepList(8, "8th smester"),
  ];
  final List<DepList> _sessiondropdownItems = [
    ////////////session

    DepList(1, "2023-2027"),
    DepList(2, "2022-2026"),
    DepList(3, "2021-2025"),
  ];
  final List<DepList> _reasondropdownItems = [
    ///////reason/leave-status
    DepList(1, "Sick leave"),
    DepList(2, "Casual Leave"),
    DepList(3, "Urget work leave"),
    DepList(4, "Other"),
  ];

  List<DropdownMenuItem<DepList>>? _dropdownMenuItems;
  DepList? _selectedItem1;
////////////////
  List<DropdownMenuItem<DepList>>? _smesterdropdownMenuItems;
  DepList? _selectedsmesterItem1;
//////////////
  List<DropdownMenuItem<DepList>>? _sessiondropdownMenuItems;
  DepList? _selectedsessionItem1;
  /////////
  List<DropdownMenuItem<DepList>>? _reasondropdownMenuItems;
  DepList? _selectedreasonItem1;

  List<DropdownMenuItem<DepList>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<DepList>> items = [];
    for (DepList listItem in listItems) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Text(listItem.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<DepList>> buildsmesterDropDownMenuItems(
      List listItems) {
    List<DropdownMenuItem<DepList>> items = [];
    for (DepList listItem in listItems) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Text(listItem.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<DepList>> buildsessionDropDownMenuItems(
      List listItems) {
    List<DropdownMenuItem<DepList>> items = [];
    for (DepList listItem in listItems) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Text(listItem.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<DepList>> buildreasonDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<DepList>> items = [];
    for (DepList listItem in listItems) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Text(listItem.name),
        ),
      );
    }
    return items;
  }

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
                      color: const Color.fromARGB(255, 6, 47, 80),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
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
                        child: const Text(
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
                  decoration: const BoxDecoration(
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
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 6, 47, 80),
                                  ),
                                  controller: fullnamecontroller,
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
                                  controller: rollNumbercontroller,
                                  decoration: const InputDecoration(
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
                            Container(
                                alignment: Alignment.center,
                                height: height * 0.07,
                                width: width * 0.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: height * 0.04,
                                    width: width * 0.5,
                                    child: DropdownButton<DepList>(
                                        isExpanded: true,
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 6, 47, 80),
                                        ),
                                        value: _selectedItem1!,
                                        items: _dropdownMenuItems,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedItem1 = value;
                                          });
                                        }),
                                  ),
                                )),
                            Container(
                                alignment: Alignment.center,
                                height: height * 0.07,
                                width: width * 0.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: height * 0.04,
                                    width: width * 0.5,
                                    child: DropdownButton<DepList>(
                                        isExpanded: true,
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 6, 47, 80),
                                        ),
                                        value: _selectedsmesterItem1!,
                                        items: _smesterdropdownMenuItems,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedsmesterItem1 = value;
                                          });
                                        }),
                                  ),
                                )),
                            Container(
                                alignment: Alignment.center,
                                height: height * 0.07,
                                width: width * 0.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: height * 0.04,
                                    width: width * 0.5,
                                    child: DropdownButton<DepList>(
                                        isExpanded: true,
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 6, 47, 80),
                                        ),
                                        value: _selectedsessionItem1!,
                                        items: _sessiondropdownMenuItems,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedsessionItem1 = value;
                                          });
                                        }),
                                  ),
                                )),
                            Container(
                                alignment: Alignment.center,
                                height: height * 0.07,
                                width: width * 0.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: height * 0.04,
                                    width: width * 0.5,
                                    child: DropdownButton<DepList>(
                                        isExpanded: true,
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 6, 47, 80),
                                        ),
                                        value: _selectedreasonItem1!,
                                        items: _reasondropdownMenuItems,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedreasonItem1 = value;
                                          });
                                        }),
                                  ),
                                )),
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
                                  controller: leavedurationcontroller,
                                  decoration: const InputDecoration(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MyActivity(),
                                    ));
                                var reqId = const Uuid();
                                String id = reqId.v4();

                                var applyId = const Uuid();
                                String aid = applyId.v4();
                                var now = DateTime.now();
                                String date =
                                    "${now.day} _${now.month} _${now.year}";
                                StudentApplyModel model = StudentApplyModel(
                                  adminid: id,
                                  applyid: aid,
                                  studentname: StaticData.modelstu!.studentname,
                                  studentid: StaticData.modelstu!.studentid,
                                  studentdept: _selectedItem1!.name,
                                  studentleaveduration:
                                      leavedurationcontroller.text,
                                  studentleavestatus:
                                      _selectedreasonItem1!.name,
                                  studentrollnumber: rollNumbercontroller.text,
                                  studentsemester: _selectedsmesterItem1!.name,
                                  studentsession: _selectedsessionItem1!.name,
                                  applydate: date,
                                  applystatus: "Approved",
                                );

                                FirebaseFirestore.instance
                                    .collection("Student-LeaveApplications")
                                    .doc(id)
                                    .set(model.toMap());
                                MyFlushBar.showSimpleFlushBar(
                                    "Leave Applied successfully",
                                    context,
                                    const Color.fromARGB(255, 6, 47, 80),
                                    Colors.white);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: height * 0.06,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
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
