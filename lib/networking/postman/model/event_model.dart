import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Event {
  String title = '';
  final String description;
  String type = '';
  Duration duration = Duration.zero;
  String session = '';
  String date = '';
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();
  String note = '';

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
    final startTimeString = json['start-time'] ?? '';
    final endTimeString = json['end-time'] ?? '';

    final startTime = Event.parseTimeOfDay(startTimeString);
    final endTime = Event.parseTimeOfDay(endTimeString);

    return Event(
      title: json['title'],
      description: json['description'],
      type: json['type'],
      duration: Duration(milliseconds: json['duration']),
      date: Event.parseDate(json['date']),
      startTime: startTime,
      endTime: endTime,
      note: json['note'],
      session: json['session'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'type': type,
      'duration': duration.inMilliseconds,
      'date': date,
      'start-time': Event.formatTimeOfDay(startTime),
      'end-time': Event.formatTimeOfDay(endTime),
      'note': note,
      'session': session,
    };
  }

  static String parseDate(String dateString) {
    try {
      final dateParts = dateString.split(',');
      final dayMonthYear = dateParts[1].split(' ');
      final year = int.parse(dayMonthYear[2]);
      final month = DateFormat.MMM().parse(dayMonthYear[0]).month;
      final day = int.parse(dayMonthYear[1]);
      return DateFormat("EEEE, d MMMM, yyyy").format(DateTime(year, month, day));
    } catch (e) {
      print("Error parsing date: $e");
      return ''; // Provide a default value or handle the error accordingly
    }
  }

  static TimeOfDay parseTimeOfDay(String timeString) {
    // Assuming timeString is in the format "HH:mm"
    final timeParts = timeString.split(':');
    final hour = int.parse(timeParts[0]);
    final minute = int.parse(timeParts[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }

  static String formatTimeOfDay(TimeOfDay timeOfDay) {
    return '${timeOfDay.hour}:${timeOfDay.minute}';
  }

  String formatDuration(Duration duration) {
    int minutes = duration.inMinutes;
    return '${minutes}m';
  }

}