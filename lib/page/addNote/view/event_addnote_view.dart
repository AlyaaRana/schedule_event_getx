import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Page/HomePage/Widget/hires_profile_view.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_session/type_duration_session_widget.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_session/type_duration_widget.dart';
import 'package:schedule_event_getx/page/addNote/widget/addnewevent_button.dart';
import 'package:schedule_event_getx/page/addNote/widget/addnote_button.dart';
import 'package:schedule_event_getx/page/addNote/widget/listview_widget.dart';
import 'package:schedule_event_getx/page/addNote/widget/schedulesession_button.dart';

class EventAddNote extends StatelessWidget {
  final AddEventController addEventController = Get.find<AddEventController>();
  EventAddNote({Key? key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the event data from the previous screen
    final Event? event = Get.arguments as Event?;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HiresProfile(),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "2hr Personal Training",
                        style: titleEvent(),
                      ),
                    ),
                  ),
                  TypeDurationSession(),
                  SizedBox(height: 20,),
                  AddNewButton(),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Schedule Events", style: txtScheduleEvent(),),
                        SingaporeTime(iconColor: Colors.black, textColor: Colors.black),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: AddNoteButton(),
                    ),
                  ),
                  // Check if event is not null before using it
                  if (event != null)
                    EventListView(event: event),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          ScheduleSessionButton(),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
