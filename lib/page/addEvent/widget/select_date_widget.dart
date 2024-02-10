import 'package:flutter/material.dart';

import '../../../helper/themes.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Container(
        width: 204,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: matPastel,
        ),
        child: Text("",style: txtCattegory(),)
      ),
    );
  }
}
