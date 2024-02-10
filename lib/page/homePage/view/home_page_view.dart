import 'package:flutter/material.dart';
import '../Widget/bottom_sheet.dart';
import '../Widget/hires_profile_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HiresProfile(),
          ],
        ),
      ),
      bottomSheet: BottomSheetView.buildBottomSheet(context, screenWidth,screenHeight),
    );
  }
}