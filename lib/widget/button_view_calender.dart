import 'package:flutter/material.dart';

import '../helper/themes.dart';

class ViewCalender extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "View Your Calendar",
          style: subtitle3(blancoWhite)
        ),
      ),
    );
  }
}
