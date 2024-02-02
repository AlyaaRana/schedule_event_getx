import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/widget/hires-profile/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../helper/themes.dart';
import '../widget/button_view_calender.dart';

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
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globe,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 5,),
                            Text("Singapore Standard Time", style: txtTime(Colors.white),),
                          ],
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 35,),
                  ViewCalender(),
                  SizedBox(height: 35,),
                  Text("Done", style: subtitle3(blancoWhite),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
