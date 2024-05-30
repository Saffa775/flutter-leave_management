// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AdminModel {
  String? adminid;

  AdminModel({
    this.adminid,
  });

  AdminModel copyWith({
    String? adminid,
  }) {
    return AdminModel(
      adminid: adminid ?? this.adminid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminid': adminid,
    };
  }

  factory AdminModel.fromMap(Map<String, dynamic> map) {
    return AdminModel(
      adminid: map['adminid'] != null ? map['adminid'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdminModel.fromJson(String source) => AdminModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AdminModel(adminid: $adminid)';

  @override
  bool operator ==(covariant AdminModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.adminid == adminid;
  }

  @override
  int get hashCode => adminid.hashCode;
}
