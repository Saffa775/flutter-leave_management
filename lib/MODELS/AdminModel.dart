// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'dart:convert';

class AdminModel {
  String? adminname;
  String? adminemail;
  String? adminpassword;
  String? adminid;
  String? applyid;

  AdminModel({
    this.adminname,
    this.adminemail,
    this.adminpassword,
    this.adminid,
    this.applyid,
  });

  AdminModel copyWith({
    String? adminname,
    String? adminemail,
    String? adminpassword,
    String? adminid,
    String? applyid,
  }) {
    return AdminModel(
      adminname: adminname ?? this.adminname,
      adminemail: adminemail ?? this.adminemail,
      adminpassword: adminpassword ?? this.adminpassword,
      adminid: adminid ?? this.adminid,
      applyid: applyid ?? this.applyid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminname': adminname,
      'adminemail': adminemail,
      'adminpassword': adminpassword,
      'adminid': adminid,
      'applyid': applyid,
    };
  }

  factory AdminModel.fromMap(Map<String, dynamic> map) {
    return AdminModel(
      adminname: map['adminname'] != null ? map['adminname'] as String : null,
      adminemail: map['adminemail'] != null ? map['adminemail'] as String : null,
      adminpassword: map['adminpassword'] != null ? map['adminpassword'] as String : null,
      adminid: map['adminid'] != null ? map['adminid'] as String : null,
      applyid: map['applyid'] != null ? map['applyid'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdminModel.fromJson(String source) => AdminModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AdminModel(adminname: $adminname, adminemail: $adminemail, adminpassword: $adminpassword, adminid: $adminid, applyid: $applyid)';
  }

  @override
  bool operator ==(covariant AdminModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.adminname == adminname &&
      other.adminemail == adminemail &&
      other.adminpassword == adminpassword &&
      other.adminid == adminid &&
      other.applyid == applyid;
  }

  @override
  int get hashCode {
    return adminname.hashCode ^
      adminemail.hashCode ^
      adminpassword.hashCode ^
      adminid.hashCode ^
      applyid.hashCode;
  }
  }
