// ignore_for_file: annotate_overrides, prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names, use_build_context_synchronously, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/Teacher-Model.dart';
import 'package:leave_manegment/OTHER/Flush.dart';
import 'package:leave_manegment/MODELS/AdminModel.dart';
import 'package:leave_manegment/MODELS/TeacherApplyModel.dart';
import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/TEACHER-ACTIVITY.dart';

import 'package:leave_manegment/OTHER/staticdata.dart';
import 'package:uuid/uuid.dart';

// ignore: must_be_immutable
class TeacherApplyLeave extends StatefulWidget {
  AdminModel modeladmin;
  TeacherApplyLeave({super.key, required this.modeladmin});

  @override
  State<TeacherApplyLeave> createState() => _TeacherApplyLeaveState();
}

class DepList {
  int value;
  String name;

  DepList(this.value, this.name);
}

@override
class _TeacherApplyLeaveState extends State<TeacherApplyLeave> {
  var height, width;

  void initState() {
    _dropdownMenuItems = buildDropDownMenuItems(
      _dropdownItems,
    );
    _selectedItem1 = _dropdownMenuItems![0].value!;

    ///////////////////reason//////////////
    _reasondropdownMenuItems = buildreasonDropDownMenuItems(
      _reasondropdownItems,
    );
    _selectedreasonItem1 = _reasondropdownMenuItems![0].value!;
    super.initState();
  }

  final fullnamecontroller = TextEditingController();
  final CNICcontroller = TextEditingController();
  final departmentcontroller = TextEditingController();
  final leavestatuscontroller = TextEditingController();
  final leavedurationcontroller = TextEditingController();
  final List<DepList> _dropdownItems = [
    ///////////departement
    DepList(1, "software engineering"),
    DepList(2, "artificial intelligence"),
    DepList(3, "Data sciences"),
    DepList(4, "information tecgnology")
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
                       Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
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
                                  controller: CNICcontroller,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    // fillColor: Colors.red,
                                    // filled: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20),
                                    prefixIcon: Icon(
                                      Icons.book,
                                    ),
                                    hintText: 'CNIC',
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
                              onTap: () async{
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const TeacherActivity(),
                                    ));
                                var reqId = const Uuid();
                                String id = reqId.v4();

                                var teacherapplyId = const Uuid();
                                String tid = teacherapplyId.v4();
                                var now = DateTime.now();
                                String date =
                                    "${now.day} _${now.month} _${now.year}";
                                TeacherApplyModel model = TeacherApplyModel(
                                  adminid: id,
                                  teacherapplyid: tid,
                                  teachername: StaticData.modelt!.teachername,
                                  teacherid: StaticData.modelt!.teacherid,
                                  teacherdept: _selectedItem1!.name,
                                  teacherleaveduration:
                                      leavedurationcontroller.text,
                                  teacherleavestatus:
                                      _selectedreasonItem1!.name,
                                  teacherCNIC: CNICcontroller.text,
                                  teacherapplydate: date,
                                  applystatus: "Pending",
                                );

                                FirebaseFirestore.instance
                                    .collection("Teacher-LeaveApplications")
                                    .doc(id)
                                    .set(model.toMap());
                                    FirebaseFirestore.instance.collection("Teacher-Registration").doc(StaticData.modelt!.teacherid).update({
                                      
                                    "leavecount"  :StaticData.modelt!.leavecount! + 1
                                    });
                                    QuerySnapshot snapshot= await FirebaseFirestore.instance.collection("Teacher-Registration").where("teacherid",isEqualTo: StaticData.modelt!.teacherid).get();
                                    TeacherModel modelt= TeacherModel.fromMap(snapshot.docs[0].data()as Map<String,dynamic>);
                                    StaticData.modelt = modelt;
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
