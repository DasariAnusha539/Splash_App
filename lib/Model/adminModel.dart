import 'package:json_annotation/json_annotation.dart';

part 'adminModel.g.dart';

@JsonSerializable()
class AdminModel {
  String? name;
  String? adminid;
  String? password;
  String? phonenumber;
  String? email;
  String? college;
  AdminModel({
    this.name,
    this.adminid,
    this.password,
    this.phonenumber,
    this.email,
    this.college
  });

  factory AdminModel.fromJson(Map<String, dynamic> json) => _$AdminModelFromJson(json);
  Map<String, dynamic> ToJson() => _$AdminModelToJson(this);

}