import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schedule_event_getx/widget/hires-profile/user.dart';

import '../../helper/themes.dart';

class HiresProfile extends StatelessWidget {
  const HiresProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios_outlined),
          UserProfile(backgroundColor: Colors.white,),
          SizedBox(width: 115,),
          Icon(
            FontAwesomeIcons.circleInfo,
            color: Colors.white,
            size: 16,
          ),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
