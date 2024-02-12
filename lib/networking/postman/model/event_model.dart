import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Event {
  String title = ''; // Nilai awal kosong
  final String description;
  String type = ''; // Nilai awal kosong
  Duration duration = Duration.zero; // Nilai awal kosong
  String session = ''; // Nilai awal kosong
  DateTime date = DateTime.now(); // Nilai awal kosong
  TimeOfDay startTime = TimeOfDay.now(); // Nilai awal kosong
  TimeOfDay endTime = TimeOfDay.now(); // Nilai awal kosong
  String note = ''; // Nilai awal kosong
//   late final String title;
//   final String description;
//   late final String type;
//   late final Duration duration;
//   late final String session;
//   late final DateTime date;
//   late final TimeOfDay startTime;
//   late final TimeOfDay endTime;
//   late final String note;



  Event({
    required this.title,
    required this.description,
    required this.type,
    required this.duration,
    required this.session,
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
      duration: Duration(minutes: int.parse(json['duration'])),
      session: json['session'],
      date: DateFormat("EEEE, d MMMM, yyyy").parse(json['date']),
      startTime: parseTimeOfDay(json['start-time']),
      endTime: parseTimeOfDay(json['end-time']),
      note: json['note'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'type': type,
      'session': session,
      'duration': duration.inMinutes, // Updated this line to use duration.inMinutes directly
      'date': date.toIso8601String(),
      'start-time': formatTimeOfDay(startTime),
      'end-time': formatTimeOfDay(endTime),
      'note': note,
    };
  }

  static TimeOfDay parseTimeOfDay(String timeString) {
    final parts = timeString.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  static String formatTimeOfDay(TimeOfDay timeOfDay) {
    return '${timeOfDay.hour}:${timeOfDay.minute}';
  }
}

