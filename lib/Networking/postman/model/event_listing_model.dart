import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Event {
  final String title;
  final String description;
  final String type;
  final Duration duration;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String note;

  Event({
    required this.title,
    required this.description,
    required this.type,
    required this.duration,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.note,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      title: json['title'],
      description: json['description'],
      type: json['type'],
      duration: json['duration'] is String ? Duration(minutes: int.parse(json['duration'])) : Duration(minutes: json['duration']),
      date: DateFormat("EEEE, d MMMM, yyyy").parse(json['date']),
      startTime: parseTimeOfDay(json['start-time']),
      endTime: parseTimeOfDay(json['end-time']),
      note: json['note'],
    );
  }

  static TimeOfDay parseTimeOfDay(String timeString) {
    final parts = timeString.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'type': type,
      'duration': duration.inMinutes.toString(),
      'date': date.toIso8601String(),
      'start-time': formatTimeOfDay(startTime),
      'end-time': formatTimeOfDay(endTime),
      'note': note,
    };
  }

  static String formatTimeOfDay(TimeOfDay timeOfDay) {
    final formatter = '${timeOfDay.hour}:${timeOfDay.minute}';
    return formatter;
  }
}
