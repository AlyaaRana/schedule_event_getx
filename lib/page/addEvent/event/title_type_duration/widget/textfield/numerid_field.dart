import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class NumericInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const NumericInputField({
    Key? key,
    required this.controller,
    required this.labelText, required int width,
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
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text("Minute", style: txtCapt()),
            SizedBox(width: 165),
          ],
        ),
      ],
    );
  }
}