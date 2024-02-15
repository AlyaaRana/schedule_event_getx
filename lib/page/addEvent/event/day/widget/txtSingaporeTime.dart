import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class SingaporeTime extends StatelessWidget {
  final Color iconColor;
  final Color textColor;

  const SingaporeTime({Key? key, this.iconColor = Colors.white, this.textColor = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.globe,
            color: iconColor,
            size: 16,
          ),
          SizedBox(width: 5,),
          Text("Singapore Standard Time", style: txtTime(textColor)),
        ],
      ),
    );
  }
}
