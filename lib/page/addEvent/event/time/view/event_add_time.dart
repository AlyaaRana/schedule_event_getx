import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/select_date_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/time_picker_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/addEvent/event/time/widget/type_duration_session/type_duration_session_widget.dart';

class EventAddTime extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();

  EventAddTime({Key? key}) : super(key: key);

  String formatDuration(Duration duration) {
    // Convert duration to a readable string
    int minutes = duration.inMinutes;
    return 'Duration : $minutes mins ';
  }

  @override
  Widget build(BuildContext context) {
    final event = Get.arguments as Event?;
    if (event == null) {
      return Scaffold(
        body: Center(
          child: Text('Event is null'),
        ),
      );
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_outlined, size: 15),
                SizedBox(width: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      event.title,
                      style: titleEvent(),
                    ),
                  ),
                ),
              ],
            ),
            TypeDurationSession(isTextVisible: false),
            SelectDate(),
            SingaporeTime(iconColor: Colors.black, textColor: Colors.black),
            SizedBox(height: 20),
            Text("Select Time", style: txtCapt()),
            Text(formatDuration(addEventController.event.value?.duration ?? Duration.zero), style: txtDuration()),
            Container(
              height: 350,
              child: TimePicker(),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
