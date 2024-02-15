import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/time_picker_widget.dart'; // Import your Event model

class EventListView extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();
  final Event? event;
  EventListView({Key? key, this.event}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String title = "";
    String type = "";
    Duration duration = Duration.zero;

    var event = Get.arguments as Event?;
    if (event != null) {
      title = event.title ?? "";
      type = event.type ?? "";
      duration = event.duration ?? Duration.zero;
    }

    String formatDuration(Duration duration) {
      int minutes = duration.inMinutes;
      return '$minutes ';
    }

    DateTime selectedDate = addEventController.selectedDate.value ?? DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(selectedDate);

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/image/profile.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: subTitleEvent()),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text("Coach", style: txtCoach()),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFBCDCDA),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            type,
                            style: subType(),
                          ),
                        ),
                      ],
                    ),
                    Text(formattedDate, style: txtTime(ashGrey)),
                    Row(
                      children: [
                        Text(TimePicker.formatTimeOfDay(event?.startTime), style: txtTime(ashGrey)),
                        SizedBox(width: 5),
                        Text("-", style: txtTime(ashGrey)),
                        SizedBox(width: 5),
                        Text(TimePicker.formatTimeOfDay(event?.endTime), style: txtTime(ashGrey)),
                      ],
                    ),
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
                child: Text('${formatDuration(duration)} mins', style: caption2()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
