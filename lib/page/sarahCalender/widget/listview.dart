import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Networking/postman/controller/event_controller.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class ListViewCalender extends StatelessWidget {
  ListViewCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EventController eventController = Get.put(EventController());

    return Obx(
          () => ListView.builder(
        itemCount: eventController.events.length,
        itemBuilder: (context, index) {
          final event = eventController.events[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/image/profile.jpg",
                  width: 50,
                  height: 50,
                ),
              ),
              Column(
                children: [
                  Text(event.title, style: subTitleEvent()),
                  Row(
                    children: [
                      Text("Coach", style: txtCoach()),
                      Text(event.type, style: subType()),
                    ],
                  ),
                  Text(event.date as String, style: txtTime(ashGrey)),
                  Row(
                    children: [
                      Text(event.startTime as String, style: txtTime(ashGrey)),
                      Text(":", style: txtTime(ashGrey)),
                      Text(event.endTime as String, style: txtTime(ashGrey)),
                    ],
                  )
                ],
              ),
              Container(
                width: 88,
                height: 33,
                decoration: BoxDecoration(
                  color: matGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(event.duration as String, style: txtTime(ashGrey)),
              ),
            ],
          );
        },
      ),
    );
  }
}
