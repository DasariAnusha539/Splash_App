import 'package:json_annotation/json_annotation.dart';

part 'studentModel.g.dart';

@JsonSerializable()
class StudentModel {
  String? regno;
  String? name;
  String? preferredname;
  String? password;
  String? mobile;
  String? email;
  String? about;
  String? branch;
  String? college;
  String? academicstart;
  String? academicend;
  String? facultyid;
  StudentModel({
    this.regno,
    this.name,
    this.preferredname,
    this.password,
    this.mobile,
    this.email,
    this.about,
    this.branch,
    this.college,
    this.academicstart,
    this.academicend,
    this.facultyid
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);
  Map<String, dynamic> ToJson() => _$StudentModelToJson(this);

}