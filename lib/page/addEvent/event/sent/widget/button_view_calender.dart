import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/page/sarahCalender/widget/sarah_calender.dart';

import '../../../../../helper/themes.dart';

class ViewCalender extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed ('/viewTheCalender');
        },
        child: Center(
          child: Text(
            "View The Calendar",
            style: subtitle3(blancoWhite),
          ),
        ),
      ),

    );
  }
}
