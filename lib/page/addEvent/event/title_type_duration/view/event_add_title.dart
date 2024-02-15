import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/event/title_type_duration/widget/save_event_add_title_button.dart';
import 'package:schedule_event_getx/page/addEvent/event/title_type_duration/widget/textfield/numerid_field.dart';
import 'package:schedule_event_getx/page/addEvent/event/title_type_duration/widget/textfield/text_field.dart';

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
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios_outlined, size: 20,),
                ),
                SizedBox(width: 5,),
                Text("Add New Event", style: titleEvent(),)
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 5, right: 15),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text("Please fill out this form before scheduling an appointment with Sarah. Thank you for your cooperation", style: caption3(),),
                  SizedBox(height: 30,),
                  CustomTextField(
                    controller: addEventController.titleController,
                    labelText: 'Input title event',
                  ),
                  SizedBox(height: 25,),
                  CustomTextField(
                    controller: addEventController.typeController,
                    labelText: 'Input type',
                  ),
                  SizedBox(height: 25,),
                  NumericInputField(
                    controller: addEventController.durationController,
                    labelText: "Input duration",
                    width: 200, // Provide a specific width
                  ),
                  SizedBox(height: 25,),
                  CustomTextField(
                    controller: addEventController.sessionController,
                    labelText: 'Add session',
                  ),
                  SizedBox(height: 50,),
                  ButtonSaveTitle(addEventController: addEventController),
                ],
              )),
          ],
        ),
      ),
    );
  }
}
