// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adminModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) => AdminModel(
      name: json['name'] as String?,
      adminid: json['adminid'] as String?,
      password: json['password'] as String?,
      phonenumber: json['phonenumber'] as String?,
      email: json['email'] as String?,
      college: json['college'] as String?,
    );

Map<String, dynamic> _$AdminModelToJson(AdminModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'adminid': instance.adminid,
      'password': instance.password,
      'phonenumber': instance.phonenumber,
      'email': instance.email,
      'college': instance.college,
    };
