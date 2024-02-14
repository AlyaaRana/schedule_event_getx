import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';

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
    date: DateFormat("yyyy-MM-dd").format(DateTime.now()),
    startTime: TimeOfDay.now(),
    endTime: TimeOfDay.now(),
    note: "",
    session: "",
  ).obs;


  final TextEditingController noteController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController sessionController = TextEditingController();

  @override
  void onClose() {
    noteController.dispose();
    typeController.dispose();
    titleController.dispose();
    durationController.dispose();
    sessionController.dispose();
    super.onClose();
  }

  set note(String value) {
    event.update((val) {
      val!.note = value;
    });
  }

  set title(String value) {
    event.update((val) {
      val!.title = value;
    });
  }

  set startTime(TimeOfDay value) {
    event.update((val) {
      val!.startTime = value;
    });
  }

  set endTime(TimeOfDay value) {
    event.update((val) {
      val!.endTime = value;
    });
  }

  set duration(int value) {
    event.update((val) {
      val!.duration = Duration(minutes: value);
    });
  }

  set type(String value) {
    event.update((val) {
      val!.type = value;
    });
  }

  set session(String value) {
    event.update((val) {
      val!.session = value;
    });
  }


  void clearEvent() {
    noteController.clear();
    typeController.clear();
    titleController.clear();
    durationController.clear();
    sessionController.clear();
    event.value = Event(
      title: "",
      description: "description",
      type: "",
      duration: Duration(),
      date: DateFormat("yyyy-MM-dd").format(DateTime.now()),
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
      note: "",
      session: '',
    );
  }
}

