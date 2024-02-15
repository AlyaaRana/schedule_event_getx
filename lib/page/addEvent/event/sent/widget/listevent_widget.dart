import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/time_picker_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/txtSingaporeTime.dart';
import '../../../../../networking/postman/model/event_model.dart';

class ListEventSent extends StatelessWidget {
  ListEventSent({super.key});
  final AddEventController addEventController = Get.find<AddEventController>();

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration.zero;

    var event = Get.arguments as Event?;
    if (event != null) {
      duration = event.duration;
    }

    String formatDuration(Duration duration) {
      int minutes = duration.inMinutes;
      return '$minutes ';
    }

    DateTime selectedDate = addEventController.selectedDate.value ?? DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(selectedDate);

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formattedDate,
                      style: txtTime(blancoWhite),
                    ),
                    Row(
                      children: [
                        Text(TimePicker.formatTimeOfDay(event?.startTime), style: txtTime(ashGrey)),
                        SizedBox(width: 5),
                        Text("-", style: txtTime(blancoWhite)),
                        SizedBox(width: 5),
                        Text(TimePicker.formatTimeOfDay(event?.endTime), style: txtTime(ashGrey)),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 88,
                  height: 33,
                  decoration: BoxDecoration(
                    color: matGreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(formatDuration(duration), style: caption2()),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: SingaporeTime(iconColor: blancoWhite, textColor: blancoWhite),
            ),
          ],
        ),
      ),
    );
  }
}
