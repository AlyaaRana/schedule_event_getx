import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_day.dart';

import '../../../helper/themes.dart';

class SelectDate extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();
  SelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    AddEventController eventController = Get.find<AddEventController>();

    return GestureDetector(
      onTap: () async {
        await Get.to(SelectDay());
        // Update the text when returning from SelectDay
        // Note: Ensure you import 'package:intl/intl.dart' for DateFormat
        print(eventController.selectedDate.value);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          width: 204,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: matPastel,
          ),
          child: Obx(() {
            DateTime selectedDate = eventController.selectedDate.value ?? DateTime.now();
            String formattedDate = DateFormat('EEEE, MMMM d, y').format(selectedDate);
            return Align(
              alignment: Alignment.center,
              child: Text(
                formattedDate,
                style: caption3(),
              ),
            );
          }),

        ),
      ),
    );
  }
}
