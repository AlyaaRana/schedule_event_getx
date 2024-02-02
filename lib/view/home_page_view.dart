import 'package:flutter/material.dart';
import '../widget/bottom-sheet/bottom_sheet.dart';
import '../widget/bottom-sheet/bottom_sheet_terms.dart';
import '../widget/hires-profile/hires_profile_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

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
      bottomSheet: BottomSheetTerms.buildBottomSheetTerms(context, screenWidth,screenHeight),
    );
  }
}