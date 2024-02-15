import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addEvent/event/sent/view/event_hasbeenseen_view.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipeableButton extends StatefulWidget {
  const SwipeableButton({Key? key}) : super(key: key);

  @override
  _SwipeableButtonState createState() => _SwipeableButtonState();

  bool get isButtonFinished => _SwipeableButtonState().isFinished;
}

class _SwipeableButtonState extends State<SwipeableButton> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return SwipeableButtonView(
      buttonText: "Swipe to Accept",
      buttontextstyle: subtitle3(boscoGrey),
      buttonWidget: Container(),
      buttonColor: Colors.grey,
      activeColor: Colors.transparent,
      isFinished: isFinished,
      onWaitingProcess: () {
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            isFinished = true;
          });
        });
      },
      onFinish: () async {
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child:  EventSend(),
          ),
        );

        setState(() {
          isFinished = false;
        });
      },
    );
  }
}
