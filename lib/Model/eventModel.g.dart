// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eventModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      name: json['name'] as String?,
      id: json['_id'] as String?,
      facultyid: json['facultyid'] as String?,
      eligibility: json['eligibility'] as String?,
      regstartdate: json['regstartdate'] == null
          ? null
          : DateTime.parse(json['regstartdate'] as String),
      regenddate: json['regenddate'] == null
          ? null
          : DateTime.parse(json['regenddate'] as String),
      eventstartdate: json['eventstartdate'] == null
          ? null
          : DateTime.parse(json['eventstartdate'] as String),
      eventenddate: json['eventenddate'] == null
          ? null
          : DateTime.parse(json['eventenddate'] as String),
      venue: json['venue'] as String?,
      discription: json['discription'] as String?,
      scope: json['scope'] as String?,
      winnercriteria: json['winnercriteria'] as String?,
      organizer: json['organizer'] as String?,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      '_id': instance.id,
      'facultyid': instance.facultyid,
      'eligibility': instance.eligibility,
      'regstartdate': instance.regstartdate?.toIso8601String(),
      'regenddate': instance.regenddate?.toIso8601String(),
      'eventstartdate': instance.eventstartdate?.toIso8601String(),
      'eventenddate': instance.eventenddate?.toIso8601String(),
      'venue': instance.venue,
      'discription': instance.discription,
      'scope': instance.scope,
      'organizer': instance.organizer,
      'winnercriteria': instance.winnercriteria,
    };
