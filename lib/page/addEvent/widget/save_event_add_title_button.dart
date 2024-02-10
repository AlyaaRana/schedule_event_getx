import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class ButtonSaveTitle extends StatelessWidget {
  const ButtonSaveTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
            "Save New Event",
            style: txtButton(),
          ),
        ),
      ),
    );
  }
}
