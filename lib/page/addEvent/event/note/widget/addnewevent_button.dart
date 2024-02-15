import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          "Add New Event",
          style: txtButton(blackPanther),
        ),
      ),
    );
  }

}
