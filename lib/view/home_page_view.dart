import 'package:flutter/material.dart';
import 'package:schedule_event_getx/widget/bottom-sheet/sarah_calender.dart';
import 'package:schedule_event_getx/widget/calender/calender_table.dart';
import '../widget/bottom-sheet/bottom_sheet.dart';
import '../widget/bottom-sheet/bottom_sheet_terms.dart';
import '../widget/hires-profile/hires_profile_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      bottomSheet: ListCalender.buildBottomSheet(context, screenWidth,screenHeight),
    );
  }
}