import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          textAlign: TextAlign.left,
          style: txtCapt(),
        ),
        SizedBox(height: 10),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
            labelStyle: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}