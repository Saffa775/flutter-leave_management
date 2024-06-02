// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'dart:convert';

class StudentApplyModel {
  String? adminid;
  String? studentname;
  String? studentid;
  String? studentrollnumber;
  String? studentdept;
  String? studentsemester;
  String? studentsession;
  String? studentleavestatus;
  String? applyid;
    String? applydate;
  String? studentleaveduration;
  String? applystatus;

  StudentApplyModel({
    this.adminid,
    this.studentname,
    this.studentid,
    this.studentrollnumber,
    this.studentdept,
    this.studentsemester,
    this.studentsession,
    this.studentleavestatus,
    this.applyid,
    this.applydate,
    this.studentleaveduration,
    this.applystatus,
  });

  StudentApplyModel copyWith({
    String? adminid,
    String? studentname,
    String? studentid,
    String? studentrollnumber,
    String? studentdept,
    String? studentsemester,
    String? studentsession,
    String? studentleavestatus,
    String? applyid,
    String? applydate,
    String? studentleaveduration,
    String? applystatus,
  }) {
    return StudentApplyModel(
      adminid: adminid ?? this.adminid,
      studentname: studentname ?? this.studentname,
      studentid: studentid ?? this.studentid,
      studentrollnumber: studentrollnumber ?? this.studentrollnumber,
      studentdept: studentdept ?? this.studentdept,
      studentsemester: studentsemester ?? this.studentsemester,
      studentsession: studentsession ?? this.studentsession,
      studentleavestatus: studentleavestatus ?? this.studentleavestatus,
      applyid: applyid ?? this.applyid,
      applydate: applydate ?? this.applydate,
      studentleaveduration: studentleaveduration ?? this.studentleaveduration,
      applystatus: applystatus ?? this.applystatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminid': adminid,
      'studentname': studentname,
      'studentid': studentid,
      'studentrollnumber': studentrollnumber,
      'studentdept': studentdept,
      'studentsemester': studentsemester,
      'studentsession': studentsession,
      'studentleavestatus': studentleavestatus,
      'applyid': applyid,
      'applydate': applydate,
      'studentleaveduration': studentleaveduration,
      'applystatus': applystatus,
    };
  }

  factory StudentApplyModel.fromMap(Map<String, dynamic> map) {
    return StudentApplyModel(
      adminid: map['adminid'] != null ? map['adminid'] as String : null,
      studentname: map['studentname'] != null ? map['studentname'] as String : null,
      studentid: map['studentid'] != null ? map['studentid'] as String : null,
      studentrollnumber: map['studentrollnumber'] != null ? map['studentrollnumber'] as String : null,
      studentdept: map['studentdept'] != null ? map['studentdept'] as String : null,
      studentsemester: map['studentsemester'] != null ? map['studentsemester'] as String : null,
      studentsession: map['studentsession'] != null ? map['studentsession'] as String : null,
      studentleavestatus: map['studentleavestatus'] != null ? map['studentleavestatus'] as String : null,
      applyid: map['applyid'] != null ? map['applyid'] as String : null,
      applydate: map['applydate'] != null ? map['applydate'] as String : null,
      studentleaveduration: map['studentleaveduration'] != null ? map['studentleaveduration'] as String : null,
      applystatus: map['applystatus'] != null ? map['applystatus'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentApplyModel.fromJson(String source) => StudentApplyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentApplyModel(adminid: $adminid, studentname: $studentname, studentid: $studentid, studentrollnumber: $studentrollnumber, studentdept: $studentdept, studentsemester: $studentsemester, studentsession: $studentsession, studentleavestatus: $studentleavestatus, applyid: $applyid, applydate: $applydate, studentleaveduration: $studentleaveduration, applystatus: $applystatus)';
  }

  @override
  bool operator ==(covariant StudentApplyModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.adminid == adminid &&
      other.studentname == studentname &&
      other.studentid == studentid &&
      other.studentrollnumber == studentrollnumber &&
      other.studentdept == studentdept &&
      other.studentsemester == studentsemester &&
      other.studentsession == studentsession &&
      other.studentleavestatus == studentleavestatus &&
      other.applyid == applyid &&
      other.applydate == applydate &&
      other.studentleaveduration == studentleaveduration &&
      other.applystatus == applystatus;
  }

  @override
  int get hashCode {
    return adminid.hashCode ^
      studentname.hashCode ^
      studentid.hashCode ^
      studentrollnumber.hashCode ^
      studentdept.hashCode ^
      studentsemester.hashCode ^
      studentsession.hashCode ^
      studentleavestatus.hashCode ^
      applyid.hashCode ^
      applydate.hashCode ^
      studentleaveduration.hashCode ^
      applystatus.hashCode;
  }
  }
