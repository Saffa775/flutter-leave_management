// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AdminModel {
  String? adminname;
  String? adminid;

  AdminModel({
    this.adminname,
    this.adminid,
  });

  AdminModel copyWith({
    String? adminname,
    String? adminid,
  }) {
    return AdminModel(
      adminname: adminname ?? this.adminname,
      adminid: adminid ?? this.adminid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminname': adminname,
      'adminid': adminid,
    };
  }

  factory AdminModel.fromMap(Map<String, dynamic> map) {
    return AdminModel(
      adminname: map['adminname'] != null ? map['adminname'] as String : null,
      adminid: map['adminid'] != null ? map['adminid'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdminModel.fromJson(String source) => AdminModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AdminModel(adminname: $adminname, adminid: $adminid)';

  @override
  bool operator ==(covariant AdminModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.adminname == adminname &&
      other.adminid == adminid;
  }

  @override
  int get hashCode => adminname.hashCode ^ adminid.hashCode;
}
