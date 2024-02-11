import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Networking/postman/controller/event_controller.dart';
import 'package:schedule_event_getx/page/sarahCalender/widget/listview.dart';
import '../../../helper/themes.dart';

class ListCalenderWidget extends StatelessWidget {
  ListCalenderWidget({Key? key}) : super(key: key);

  static Widget buildBottomSheet(
      BuildContext context,
      double screenWidth,
      double screenHeight,
      ) {
    final EventController eventController = Get.put(EventController());

    eventController.fetchEvents();

    return BottomSheet(
      onClosing: () {},
      backgroundColor: Colors.transparent,
      enableDrag: false,
      builder: (context) {
        return ClipRRect(
          child: Container(
            decoration: BoxDecoration(
              color: blancoWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 15,
                ),
              ],
            ),
            width: screenWidth,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ListViewCalender()
                  Obx(
                        () => ListView.builder(
                      itemCount: eventController.events.length,
                      itemBuilder: (context, index) {
                        final event = eventController.events[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "assets/image/profile.jpg",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  child: Text(event.duration as String, style: txtTime(ashGrey)),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
