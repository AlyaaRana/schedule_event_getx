import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class SelectType extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const SelectType({
    required this.text,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(right: 20.0),
    child: ElevatedButton(
      child: Text(
        text,
        style: caption3(),
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.black),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        ),
      ),
      onPressed: onClicked,
    ),
  );
}
