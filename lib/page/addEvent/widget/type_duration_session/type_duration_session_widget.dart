import 'package:flutter/material.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_session/type_duration_widget.dart';

class TypeDurationSession extends StatelessWidget {
  const TypeDurationSession({super.key});

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
                text: 'In-Person',
              ),TypeDurationWidget(
                image: Icons.access_time,
                text: '30',
              ),TypeDurationWidget(
                image: Icons.plus_one,
                text: 'Multiple',
              ),
            ],
          ),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor cras eget aliquam id facilisis dui. Feugiat vel sapien aliquam, pellentesque placerat in in sit mi. Purus sed interdum amet tristique elementum pretium ",
            style: caption3(),)
        ],
      ),
    );
  }
}
