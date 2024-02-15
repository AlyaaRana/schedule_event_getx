import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/view/event_addnote_view.dart';

class AddNoteButton extends StatelessWidget {
  final AddEventController addEventController = Get.put(AddEventController());

  AddNoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet(context);
      },
      child: Container(
        height: 28,
        width: 179,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            "Add notes",
            style: caption5(),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.expand, size: 25),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(right: 120),
                child: TextField(
                  controller: addEventController.noteController,
                  style: message1(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Write a note to share anything that will help prepare for our session.',
                  ),
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    if (addEventController.event.value != null) {
                      addEventController.event.update((val) {
                        val!.note = addEventController.noteController.text;
                      });

                      Get.back();
                      Get.to(EventAddNote(), arguments: addEventController.event.value);
                    }
                  },
                  child: Icon(Icons.add_circle, color: Colors.black, size: 35),

                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
