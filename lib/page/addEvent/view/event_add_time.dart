import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/widget/nextto_add_note_button.dart';
import 'package:schedule_event_getx/page/addEvent/widget/select_date_widget.dart';
import 'package:schedule_event_getx/page/addEvent/widget/time_picker_widget.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_session/type_duration_session_widget.dart';

class EventAddTime extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();

  EventAddTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = Get.arguments as Event;

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
                    child: Obx(() {
                      return Text(
                        event.title,
                        style: titleEvent(),
                      );
                    }),
                  ),
                ),
              ],
            ),
            TypeDurationSession(isTextVisible: false),
            SelectDate(),
            SingaporeTime(iconColor: Colors.black, textColor: Colors.black),
            SizedBox(height: 20),
            Text("Select Time", style: txtCapt()),
            Container(
              height: 300,
              child: TimePicker(),
            ),
            SizedBox(height: 10),
            Text("Duration : 30", style: txtDuration()),
            NextToAddNote(),
          ],
        ),
      ),
    );
  }
}
