import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/networking/postman/model/event_model.dart';
import 'package:schedule_event_getx/page/addEvent/event/time/widget/type_duration_session/type_duration_widget.dart';

class TypeDurationSession extends StatelessWidget {
  final bool isTextVisible;
  final AddEventController addEventController = Get.find<AddEventController>();

  TypeDurationSession({Key? key, this.isTextVisible = true}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String type = "";
    Duration duration = Duration.zero;
    String session = "";

    var event = Get.arguments as Event?;
    if (event != null) {
      type = event.type;
      duration = event.duration;
      session = event.session;
    }

    String formatDuration(Duration duration) {
      int minutes = duration.inMinutes;
      return '$minutes ';
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              TypeDurationWidget(
                image: Icons.directions_run,
                text: type,
              ),
              TypeDurationWidget(
                image: Icons.access_time,
                text: formatDuration(duration),
              ),
              TypeDurationWidget(
                image: Icons.plus_one,
                text: session,
              ),
            ],
          ),
          if (isTextVisible)
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor cras eget aliquam id facilisis dui. Feugiat vel sapien aliquam, pellentesque placerat in in sit mi. Purus sed interdum amet tristique elementum pretium ",
              style: caption3(),
            ),
        ],
      ),
    );
  }
}
