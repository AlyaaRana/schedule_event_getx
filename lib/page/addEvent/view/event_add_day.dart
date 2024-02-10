import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Page/HomePage/Widget/hires_profile_view.dart';
import 'package:schedule_event_getx/page/addEvent/controller/event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/widget/calender_table.dart';

class SelectDay extends StatelessWidget {
  SelectDay({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddEventController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HiresProfile(),
              CalendarTable()
            ],
          ),
        ),
      ),
    );
  }
}

