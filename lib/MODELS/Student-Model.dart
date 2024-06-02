// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'dart:convert';

class StudentModel {
  String? studentname;
  String? studentid;
  String? studentemail;
  String? studentrollnumber;
  String? studentpassword;
 

  StudentModel({
    this.studentname,
    this.studentid,
    this.studentemail,
    this.studentrollnumber,
    this.studentpassword,
  });

  StudentModel copyWith({
    String? studentname,
    String? studentid,
    String? studentemail,
    String? studentrollnumber,
    String? studentpassword,
  }) {
    return StudentModel(
      studentname: studentname ?? this.studentname,
      studentid: studentid ?? this.studentid,
      studentemail: studentemail ?? this.studentemail,
      studentrollnumber: studentrollnumber ?? this.studentrollnumber,
      studentpassword: studentpassword ?? this.studentpassword,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'studentname': studentname,
      'studentid': studentid,
      'studentemail': studentemail,
      'studentrollnumber': studentrollnumber,
      'studentpassword': studentpassword,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      studentname: map['studentname'] != null ? map['studentname'] as String : null,
      studentid: map['studentid'] != null ? map['studentid'] as String : null,
      studentemail: map['studentemail'] != null ? map['studentemail'] as String : null,
      studentrollnumber: map['studentrollnumber'] != null ? map['studentrollnumber'] as String : null,
      studentpassword: map['studentpassword'] != null ? map['studentpassword'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) => StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentModel(studentname: $studentname, studentid: $studentid, studentemail: $studentemail, studentrollnumber: $studentrollnumber, studentpassword: $studentpassword)';
  }

  @override
  bool operator ==(covariant StudentModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.studentname == studentname &&
      other.studentid == studentid &&
      other.studentemail == studentemail &&
      other.studentrollnumber == studentrollnumber &&
      other.studentpassword == studentpassword;
  }

  @override
  int get hashCode {
    return studentname.hashCode ^
      studentid.hashCode ^
      studentemail.hashCode ^
      studentrollnumber.hashCode ^
      studentpassword.hashCode;
  }
  }
