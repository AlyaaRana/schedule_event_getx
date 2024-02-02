import 'package:flutter/material.dart';

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
          Container(
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/image/profile.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jeff Wang",
                      style: name(),
                    ),
                    Text(
                      "@sarah.sports",
                      style: subName(),
                    ),
                    Text(
                      "Personal Trainer",
                      style: subName(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 115,),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
