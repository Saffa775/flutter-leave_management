// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'dart:convert';

class ApprovedModel {
  String? adminname;
  String? studentname;
  String? studentid;
  String? adminid;

  ApprovedModel({
    this.adminname,
    this.studentname,
    this.studentid,
    this.adminid,
  });

  ApprovedModel copyWith({
    String? adminname,
    String? studentname,
    String? studentid,
    String? adminid,
  }) {
    return ApprovedModel(
      adminname: adminname ?? this.adminname,
      studentname: studentname ?? this.studentname,
      studentid: studentid ?? this.studentid,
      adminid: adminid ?? this.adminid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminname': adminname,
      'studentname': studentname,
      'studentid': studentid,
      'adminid': adminid,
    };
  }

  factory ApprovedModel.fromMap(Map<String, dynamic> map) {
    return ApprovedModel(
      adminname: map['adminname'] != null ? map['adminname'] as String : null,
      studentname:
          map['studentname'] != null ? map['studentname'] as String : null,
      studentid: map['studentid'] != null ? map['studentid'] as String : null,
      adminid: map['adminid'] != null ? map['adminid'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApprovedModel.fromJson(String source) =>
      ApprovedModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApprovedModel(adminname: $adminname, studentname: $studentname, studentid: $studentid, adminid: $adminid)';
  }

  @override
  bool operator ==(covariant ApprovedModel other) {
    if (identical(this, other)) return true;

    return other.adminname == adminname &&
        other.studentname == studentname &&
        other.studentid == studentid &&
        other.adminid == adminid;
  }

  @override
  int get hashCode {
    return adminname.hashCode ^
        studentname.hashCode ^
        studentid.hashCode ^
        adminid.hashCode;
  }
}
