import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Page/HomePage/Widget/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/eventSent/widget/listevent_widget.dart';
import '../../../helper/themes.dart';
import '../Widget/button_view_calender.dart';

class EventSend extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();
  EventSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final event = Get.arguments as Event?;
    // if (event == null) {
    //   return Scaffold(
    //     body: Center(
    //       child: Text('Event is null'),
    //     ),
    //   );
    // }

    return Scaffold(
      backgroundColor: lushGreen,
      body: Container(
        padding: const EdgeInsets.only(top: 15),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.close,
                    color: lushGreen,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children:[
                        Text(
                          "Your  session invitation has been sent to",
                          style: txtSucces(),
                        ),
                        SizedBox(height: 30,),
                        UserProfile(backgroundColor: lushGreen,),
                        SizedBox(height: 35,),
                        ListEventSent(),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                  SizedBox(height: 35,),
                  ViewCalender(),
                  SizedBox(height: 35,),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/viewTheCalender");
                    },
                    child: Text("Done", style: subtitle3(blancoWhite),), // Replace this with your actual ListCalenderView widget
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
