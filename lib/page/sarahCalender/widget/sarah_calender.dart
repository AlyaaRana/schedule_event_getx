import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Networking/postman/controller/event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
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
              height: 240,
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Obx(
                          () => ListView.builder(
                        itemCount: eventController.events.length,
                        itemBuilder: (context, index) {
                          final event = eventController.events[index];
                          return Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only( top: 10),
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
                                        Text(event.title, style: subTitleEvent()),
                                        SizedBox(height: 3),
                                        Row(
                                          children: [
                                            Text("Coach", style: txtCoach()),
                                            SizedBox(width: 10,),
                                            Container(
                                              padding: EdgeInsets.all(5), // Adjust padding as needed
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFBCDCDA),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Text(
                                                event.type,
                                                style: subType(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(event.date as String, style: txtTime(ashGrey)),
                                        Row(
                                          children: [
                                            Text(Event.formatTimeOfDay(event.startTime), style: txtTime(ashGrey)),
                                            SizedBox(width: 5,),
                                            Text("-", style: txtTime(ashGrey)),
                                            SizedBox(width: 5,),
                                            Text(Event.formatTimeOfDay(event.endTime), style: txtTime(ashGrey)),
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
                                        child: Text(""),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (index < eventController.events.length - 1 || index == eventController.events.length - 1) Divider(), // Add a divider for all items and at the bottom
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                      child: Text("See more ...",style: txtSeeMore(),)
                  )
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
