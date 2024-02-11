import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class TypeDurationWidget extends StatelessWidget {
  const TypeDurationWidget({super.key, required this.text, required this.image});

  final IconData image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: muteGrey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              image,
              size: 20,
              color: Colors.black54,
            ),
            SizedBox(height: 15),
            Text(
              text,
              textAlign: TextAlign.center,
              style: txtCattegory(),
            ),
          ],
        ),
      ),
    );
  }
}

