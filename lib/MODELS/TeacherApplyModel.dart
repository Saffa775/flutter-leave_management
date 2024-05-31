// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TeacherApplyModel {
  String? adminid;
  String? teachername;
  String? teacherid;
  String? teacherCNIC;
  String? teacherdept;
  String? teacherleavestatus;
  String? teacherapplyid;
  String? teacherapplydate;
  String? teacherleaveduration;

  TeacherApplyModel({
    this.adminid,
    this.teachername,
    this.teacherid,
    this.teacherCNIC,
    this.teacherdept,
    this.teacherleavestatus,
    this.teacherapplyid,
    this.teacherapplydate,
    this.teacherleaveduration,
  });

  TeacherApplyModel copyWith({
    String? adminid,
    String? teachername,
    String? teacherid,
    String? teacherCNIC,
    String? teacherdept,
    String? teacherleavestatus,
    String? teacherapplyid,
    String? teacherapplydate,
    String? teacherleaveduration,
  }) {
    return TeacherApplyModel(
      adminid: adminid ?? this.adminid,
      teachername: teachername ?? this.teachername,
      teacherid: teacherid ?? this.teacherid,
      teacherCNIC: teacherCNIC ?? this.teacherCNIC,
      teacherdept: teacherdept ?? this.teacherdept,
      teacherleavestatus: teacherleavestatus ?? this.teacherleavestatus,
      teacherapplyid: teacherapplyid ?? this.teacherapplyid,
      teacherapplydate: teacherapplydate ?? this.teacherapplydate,
      teacherleaveduration: teacherleaveduration ?? this.teacherleaveduration,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminid': adminid,
      'teachername': teachername,
      'teacherid': teacherid,
      'teacherCNIC': teacherCNIC,
      'teacherdept': teacherdept,
      'teacherleavestatus': teacherleavestatus,
      'teacherapplyid': teacherapplyid,
      'teacherapplydate': teacherapplydate,
      'teacherleaveduration': teacherleaveduration,
    };
  }

  factory TeacherApplyModel.fromMap(Map<String, dynamic> map) {
    return TeacherApplyModel(
      adminid: map['adminid'] != null ? map['adminid'] as String : null,
      teachername:
          map['teachername'] != null ? map['teachername'] as String : null,
      teacherid: map['teacherid'] != null ? map['teacherid'] as String : null,
      teacherCNIC:
          map['teacherCNIC'] != null ? map['teacherCNIC'] as String : null,
      teacherdept:
          map['teacherdept'] != null ? map['teacherdept'] as String : null,
      teacherleavestatus: map['teacherleavestatus'] != null
          ? map['teacherleavestatus'] as String
          : null,
      teacherapplyid: map['teacherapplyid'] != null
          ? map['teacherapplyid'] as String
          : null,
      teacherapplydate: map['teacherapplydate'] != null
          ? map['teacherapplydate'] as String
          : null,
      teacherleaveduration: map['teacherleaveduration'] != null
          ? map['teacherleaveduration'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherApplyModel.fromJson(String source) =>
      TeacherApplyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherApplyModel(adminid: $adminid, teachername: $teachername, teacherid: $teacherid, teacherCNIC: $teacherCNIC, teacherdept: $teacherdept, teacherleavestatus: $teacherleavestatus, teacherapplyid: $teacherapplyid, teacherapplydate: $teacherapplydate, teacherleaveduration: $teacherleaveduration)';
  }

  @override
  bool operator ==(covariant TeacherApplyModel other) {
    if (identical(this, other)) return true;

    return other.adminid == adminid &&
        other.teachername == teachername &&
        other.teacherid == teacherid &&
        other.teacherCNIC == teacherCNIC &&
        other.teacherdept == teacherdept &&
        other.teacherleavestatus == teacherleavestatus &&
        other.teacherapplyid == teacherapplyid &&
        other.teacherapplydate == teacherapplydate &&
        other.teacherleaveduration == teacherleaveduration;
  }

  @override
  int get hashCode {
    return adminid.hashCode ^
        teachername.hashCode ^
        teacherid.hashCode ^
        teacherCNIC.hashCode ^
        teacherdept.hashCode ^
        teacherleavestatus.hashCode ^
        teacherapplyid.hashCode ^
        teacherapplydate.hashCode ^
        teacherleaveduration.hashCode;
  }
}
