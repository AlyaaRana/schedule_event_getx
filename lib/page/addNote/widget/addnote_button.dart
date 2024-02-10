import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 179,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // Warna border hitam
        borderRadius: BorderRadius.circular(20), // Border radius 8.0
      ),
      child: Center(
        child: Text(
          "Add notes",
          style: caption5(),
        ),
      ),
    );
  }
}
