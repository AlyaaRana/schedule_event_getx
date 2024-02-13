import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_session/type_duration_widget.dart';

class TypeDurationSession extends StatelessWidget {
  final bool isTextVisible;
  final AddEventController addEventController = Get.find<AddEventController>();

  TypeDurationSession({Key? key, this.isTextVisible = true}) : super(key: key);

  String formatDuration(Duration duration) {
    int minutes = duration.inMinutes;
    return '$minutes ';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              TypeDurationWidget(
                image: Icons.directions_run,
                text: addEventController.event.value?.type ?? '',
              ),
              TypeDurationWidget(
                image: Icons.access_time,
                text: formatDuration(addEventController.event.value?.duration ?? Duration.zero),
              ),
              TypeDurationWidget(
                image: Icons.plus_one,
                text: addEventController.event.value?.session ?? '',
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
