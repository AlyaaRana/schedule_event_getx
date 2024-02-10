import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatelessWidget {
  final Color backgroundColor;

  UserProfile({required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              "Sarah Chu",
              style: name(backgroundColor),
            ),
            Text(
              "@sarah.sports",
              style: subName(backgroundColor),
            ),
            Text(
              "Personal Trainer",
              style: subName(backgroundColor),
            ),
          ],
        ),
      ],
    );
  }

  TextStyle name(Color backgroundColor) {
    Color textColor = backgroundColor == Colors.white ? Colors.black : Colors.white;

    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(12),
      ),
    );
  }

  TextStyle subName(Color backgroundColor) {
    Color textColor = backgroundColor == Colors.white ? Colors.black : Colors.white;

    return GoogleFonts.poppins(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w300,
        fontSize: figmaFontsize(11),
      ),
    );
  }

  double figmaFontsize(double figmaSize) {
    // Your figma to Flutter font size conversion logic
    return figmaSize;
  }
}
