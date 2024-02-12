import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_time.dart';


class ButtonSaveTitle extends StatelessWidget {
  final AddEventController addEventController;
  ButtonSaveTitle({Key? key, required this.addEventController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Update Rx variables in the controller
        if (addEventController.event.value != null) {
          addEventController.event.update((val) {
            val!.title = addEventController.titleController.text;
            val.duration = Duration(minutes: int.parse(addEventController.durationController.text));
            val.session = addEventController.sessionController.text;
            val.type = addEventController.typeController.text;
          });

          // Move to the next page
          Get.toNamed('/eventAddTime', arguments: addEventController.event.value);
        }
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
            "Save",
            style: txtButton(blancoWhite),
          ),
        ),
      ),
    );
  }
}
