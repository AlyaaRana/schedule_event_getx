import 'package:flutter/material.dart';
import 'package:schedule_event_getx/widget/hires-profile/hires_profile_view.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import '../widget/calender/calender_table.dart';

class EventSelectDate extends StatelessWidget {
  const EventSelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HiresProfile(),
            SizedBox(height: 25,),
            TimePickerSpinner(
              isForce2Digits: true,
              spacing: 5,
              itemHeight: 40,
              itemWidth: 30,
              normalTextStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
              highlightedTextStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
            // CalendarTable()
          ],
        ),
      ),
    );
  }
}
