import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addNote/view/event_addnote_view.dart';

class NextToAddNote extends StatelessWidget {
  const NextToAddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(EventAddNote());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Container(
            width: 106,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: blackPanther,
            ),
          child: Center(
            child: Text(
              "Next",
              style: txtButton(blancoWhite),
            ),
          ),
        ),
      ),
    );
  }
}
