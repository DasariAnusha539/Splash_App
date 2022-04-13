import 'package:json_annotation/json_annotation.dart';

part 'eventModel.g.dart';

@JsonSerializable()
class EventModel {
  String? name;
  @JsonKey(name: "_id")
  String? id;
  String? facultyid;
  String? eligibility;
  DateTime? regstartdate;
  DateTime? regenddate;
  DateTime? eventstartdate;
  DateTime? eventenddate;
  String? venue;
  String? discription;
  String? scope;
  String? organizer;
  String? winnercriteria;
  EventModel({
    this.name,
    this.id,
    this.facultyid,
    this.eligibility,
    this.regstartdate,
    this.regenddate,
    this.eventstartdate,
    this.eventenddate,
    this.venue,
    this.discription,
    this.scope,
    this.winnercriteria,
    this.organizer
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);
  Map<String, dynamic> ToJson() => _$EventModelToJson(this);

}