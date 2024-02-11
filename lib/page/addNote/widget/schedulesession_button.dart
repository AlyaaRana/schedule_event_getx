import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/eventSent/widget/bottom_sheet_terms.dart';

class ScheduleSessionButton extends StatelessWidget {
  const ScheduleSessionButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
          BottomSheetTerms.buildBottomSheetTerms(
            context,
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
        );
      },
      child: Container(
        height: 48,
        width: 290,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Schedule sessions for 60",
            style: txtButton(blancoWhite),
          ),
        ),
      ),
    );
  }
}
