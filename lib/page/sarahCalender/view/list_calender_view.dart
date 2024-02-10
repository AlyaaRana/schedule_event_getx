import 'package:flutter/material.dart';
import 'package:schedule_event_getx/page/homePage/Widget/hires_profile_view.dart';
import 'package:schedule_event_getx/page/sarahCalender/widget/sarah_calender.dart';

class ListCalenderView extends StatelessWidget {
  const ListCalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HiresProfile(),
          ],
        ),
      ),
      bottomSheet: ListCalenderWidget.buildBottomSheet(context, screenWidth,screenHeight),
    );
  }
}

