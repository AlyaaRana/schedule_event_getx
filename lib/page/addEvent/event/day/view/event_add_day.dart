import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Page/HomePage/Widget/hires_profile_view.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/calender_table.dart';
import 'package:schedule_event_getx/page/addEvent/event/time/widget/type_duration_session/type_duration_session_widget.dart';

class SelectDay extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();
  SelectDay({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "";

    var event = Get.arguments as Event?;
    if (event != null) {
      title = event.title;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HiresProfile(),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: titleEvent(),
                  ),
                ),
              ),
              TypeDurationSession(isTextVisible: true),
              CalendarTable(),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    DateTime selectedDate = CalendarTable().getSelectedDate(context);
                    Get.back(result: selectedDate);
                  },
                  child: Text(
                    "Select a day",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
