import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Networking/postman/model/event_listing_model.dart';

class AddEventController extends GetxController {
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  void updateDate(DateTime date) {
    selectedDate.value = date;
  }

  var event = Event(
    title: "",
    description: "",
    type: "",
    duration: Duration(),
    date: DateTime.now(),
    startTime: TimeOfDay.now(),
    endTime: TimeOfDay.now(),
    note: "",
  ).obs;

  final TextEditingController noteController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController durationController = TextEditingController();

  @override
  void onClose() {
    noteController.dispose();
    typeController.dispose();
    titleController.dispose();
    durationController.dispose();
    super.onClose();
  }

  void updateNote(String note) {
    event.update((val) {
      val!.note = note;
    });
  }

  void updateTitle(String title) {
    event.update((val) {
      val!.title = title;
    });
  }

  // void updateDate(DateTime date) {
  //   event.update((val) {
  //     val!.date = date;
  //   });
  // }

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

  void updateDuration(String durationString) {
    // Convert string to integer and set the duration
    int durationMinutes = int.tryParse(durationString) ?? 0;
    event.update((val) {
      val!.duration = Duration(minutes: durationMinutes);
    });
  }

  void updateType(String type) {
    event.update((val) {
      val!.type = type;
    });
  }

  void clearEvent() {
    noteController.clear();
    typeController.clear();
    titleController.clear();
    durationController.clear();
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
