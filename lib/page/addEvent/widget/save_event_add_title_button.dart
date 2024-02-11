import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_time.dart';

class ButtonSaveTitle extends StatelessWidget {
  const ButtonSaveTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(EventAddTime());
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
