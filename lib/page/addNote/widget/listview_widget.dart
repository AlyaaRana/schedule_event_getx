import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart'; // Import your Event model

class EventListView extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();
  final Event? event;
  EventListView({Key? key, this.event}) : super(key: key);

  String formatDuration(Duration duration) {
    int minutes = duration.inMinutes;
    return '$minutes ';
  }

  @override
  Widget build(BuildContext context) {
    Event? event = addEventController.event.value;

    if (event == null) {
      // Return an empty container or some placeholder if event is null
      return Container();
    }

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/image/profile.jpg",
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(event.title ?? '', style: subTitleEvent()),
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
                      event.type ?? '',
                      style: subType(),
                    ),
                  ),
                ],
              ),
              Text(event.date ?? '', style: txtTime(ashGrey)),
              Row(
                children: [
                  Text(Event.formatTimeOfDay(event.startTime) ?? '', style: txtTime(ashGrey)),
                  SizedBox(width: 5),
                  Text("-", style: txtTime(ashGrey)),
                  SizedBox(width: 5),
                  Text(Event.formatTimeOfDay(event.endTime) ?? '', style: txtTime(ashGrey)),
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
              child: Text(formatDuration(event.duration ?? Duration.zero)),
            ),
          ),
        ],
      ),
    );
  }
}
