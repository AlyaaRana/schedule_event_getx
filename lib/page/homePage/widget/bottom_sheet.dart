import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addEvent/event/title_type_duration/view/event_add_title.dart';
import 'package:schedule_event_getx/page/sarahCalender/view/list_calender_view.dart';


class BottomSheetView extends StatelessWidget {
  const BottomSheetView({Key? key});

  static Widget buildBottomSheet(BuildContext context, double screenWidth, double screenHeight) {
    return BottomSheet(
      onClosing: () {},
      backgroundColor: Colors.transparent,
      enableDrag: false,
      builder: (context) {
        return ClipRRect(
          child: Container(
            height: 170,
            decoration: BoxDecoration(
              color: blancoWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 15,
                ),
              ],
            ),
            width: screenWidth,
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Write a new message", style: message1(),),
                  Container(
                    padding: const EdgeInsets.only(top: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ListCalenderView());
                          },
                          child: Icon(Icons.calendar_month, size: 33,),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/addEvent');
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: boscoGrey,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
