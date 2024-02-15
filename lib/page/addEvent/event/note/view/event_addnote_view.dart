import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/Page/HomePage/Widget/hires_profile_view.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/widget/addnote_button.dart';
import 'package:schedule_event_getx/page/addEvent/event/time/widget/type_duration_session/type_duration_session_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/widget/addnewevent_button.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/widget/listview_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/widget/schedulesession_button.dart';

class EventAddNote extends StatefulWidget {
  EventAddNote({Key? key}) : super(key: key);

  @override
  _EventAddNoteState createState() => _EventAddNoteState();
}

class _EventAddNoteState extends State<EventAddNote> {
  final AddEventController addEventController = Get.find<AddEventController>();

  @override
  Widget build(BuildContext context) {
    String title = "";
    Duration duration = Duration.zero;
    String session = "";

    var event = Get.arguments as Event?;
    if (event != null) {
      title = event.title;
      duration = event.duration;
      session = event.session;
    }

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
                      child: Text( title,
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
                      )
                  ),
                  EventListView(event: event,),
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
