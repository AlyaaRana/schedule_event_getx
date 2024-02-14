import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';

import '../../../networking/postman/model/event_model.dart';

class ListEventSent extends StatelessWidget {
  ListEventSent({super.key});
  final AddEventController addEventController = Get.find<AddEventController>();

  @override
  Widget build(BuildContext context) {
    Event? event = addEventController.event.value;

    if (event == null) {
      return Container();
    }

    String formatDuration(Duration duration) {
      int minutes = duration.inMinutes;
      return '$minutes ';
    }

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
                      event.date != null
                          ? DateFormat('EEEE, d MMMM, y').format(DateTime.parse(event.date!))
                          : '',
                      style: txtTime(blancoWhite),
                    ),
                    Row(
                      children: [
                        Text(Event.formatTimeOfDay(event.startTime) ?? '', style: txtTime(blancoWhite)),
                        SizedBox(width: 5),
                        Text("-", style: txtTime(blancoWhite)),
                        SizedBox(width: 5),
                        Text(Event.formatTimeOfDay(event.endTime) ?? '', style: txtTime(blancoWhite)),
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
                    child: Text('${formatDuration(event.duration ?? Duration.zero)} mins', style: caption2()),
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
