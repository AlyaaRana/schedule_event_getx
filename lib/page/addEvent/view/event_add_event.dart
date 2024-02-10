import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/page/addEvent/controller/event_controller.dart';

class AddEvent extends StatelessWidget {
  final AddEventController addEventController = Get.put(AddEventController());
  AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
