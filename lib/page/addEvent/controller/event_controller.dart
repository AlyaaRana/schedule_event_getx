import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/networking/postman/model/event_listing_model.dart';

class AddEventController extends GetxController {
  var event = Event(
    title: "",
    description: "description",
    type: "",
    duration: Duration(),
    date: DateTime.now(),
    startTime: TimeOfDay.now(),
    endTime: TimeOfDay.now(),
    note: "",
  ).obs;

  void updateTitle(String title) {
    event.update((val) {
      val!.title = title;
    });
  }

  void updateType(String type) {
    event.update((val) {
      val!.type = type;
    });
  }

  void updateDuration(Duration duration) {
    event.update((val) {
      val!.duration = duration;
    });
  }

  void updateDate(DateTime date) {
    event.update((val) {
      val!.date = date;
    });
  }

  void updateTime(TimeOfDay time) {
    event.update((val) {
      val!.startTime = time;
    });
  }

  void updateEndTime(TimeOfDay time) {
    event.update((val) {
      val!.endTime = time;
    });
  }

  void updateNote(String note) {
    event.update((val) {
      val!.note = note;
    });
  }

  void clearEvent() {
    event.value = Event(
      title: "",
      description: "description",
      type: "",
      duration: Duration(),
      date: DateTime.now(),
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
      note: "",
    );
  }
}
