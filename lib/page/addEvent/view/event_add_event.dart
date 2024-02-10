import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addEvent/controller/event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/widget/select_date_widget.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_widget.dart';

class AddEvent extends StatelessWidget {
  final AddEventController addEventController = Get.put(AddEventController());
  AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_outlined, size: 15,),
                SizedBox(width: 15,),
                Text("Add New Event", style: subCalender(),)
              ],
            ),
            TextField(
              controller: addEventController.titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            Row(
              children: [
                TypeDurationWidget(
                  image: Icons.directions_run,
                  text: 'In-Person',
                  // controller: addEventController.typeController,
                  // onChanged: (value) {
                  //   addEventController.updateType(value);
                  // },
                ),TypeDurationWidget(
                  image: Icons.access_time,
                  text: 'Work',
                  // controller: addEventController.durationController,
                  // onChanged: (value) {
                  //   addEventController.updateType(value);
                  // },
                ),TypeDurationWidget(
                  image: Icons.people,
                  text: 'Work',
                ),
              ],
            ),
            SelectDate(),
            SingaporeTime(iconColor: Colors.black, textColor: Colors.black),
            SizedBox(height: 20,),
            Text("Select Time",style: txtCapt(),),
            SizedBox(height: 10,),
            Text("Duration",style: txtDuration(),)
          ],
        ),
      ),
    );
  }
}
