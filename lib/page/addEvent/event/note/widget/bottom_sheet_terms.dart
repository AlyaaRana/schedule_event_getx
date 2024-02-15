import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/Page/EventSent/Widget/swipeable_button.dart';

class BottomSheetTerms extends StatelessWidget {
  const BottomSheetTerms({super.key});

  static Widget buildBottomSheetTerms(BuildContext context, double screenWidth, double screenHeight) {
    return BottomSheet(
      onClosing: () {},
      backgroundColor: Colors.transparent,
      enableDrag: false,
      builder: (context) {
        return ClipRRect(
          child: Container(
            height: 360,
            decoration: BoxDecoration(
              color: muteGrey,
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
              padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 36,
                      height: 5,
                      color: containerGrey,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Terms & Conditions", style: txtTitleTerms(),),
                  SizedBox(height: 10),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor ligula, rhoncus eu molestie sed, consectetur vitae nisi. Aenean semper, dui vehicula imperdiet scelerisque, urna lorem tincidunt erat, a mollis augue velit nec velit. Praesent vitae sodales leo. Phasellus volutpat velit lorem, a consectetur turpis cursus in. Pellentesque a magna ac tortor venenatis maximus at eu neque. Nunc bibendum sem nec sem suscipit, ut faucibus ipsum dictum. Pellentesque sollicitudin dui magna, in maximus est mollis ut. Donec semper leo sit amet fringilla tempor. ", style: caption3(),),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SwipeableButton(),
                          SizedBox(height: 15,),
                          Text("Cancel", style: subtitle3(boscoGrey),)
                        ],
                      ),
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




