import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Page/HomePage/Widget/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';
import '../../../helper/themes.dart';
import '../Widget/button_view_calender.dart';

class EventSend extends StatelessWidget {
  const EventSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          'Your 2hr Personal Training session invitation has been sent to',
                          style: txtSucces(),
                        ),
                        SizedBox(height: 30,),
                        UserProfile(backgroundColor: lushGreen,),
                        SizedBox(height: 35,),
                        SingaporeTime(iconColor: blancoWhite, textColor:blancoWhite),
                      ],
                    )
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
