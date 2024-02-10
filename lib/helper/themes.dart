import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//colors
const Color primary = Color(0xFFFFFFFF);
const Color black = Color(0xFF000000);
const Color secondary = Color(0xFF006C66);
const Color matTurquoies = Color(0xFF76B7B8);
const Color blancoWhite = Color(0xFFF8F8F8);
const Color muteGrey = Color(0xFFF5F5F5);
const Color ashGrey = Color(0xFF4A4A4A);
const Color boscoGrey = Color(0xFF232323);
const Color blackPanther = Color(0xFF0A0A0A);
const Color matGreen = Color(0xFF296152);
const Color cattegoryInPerson = Color(0xFFBCDCDA);
const Color cattegoryCall = Color(0xFFCAB8E3);
const Color mistyGrey = Color(0xFFBDBDBD);
const Color containerGrey = Color(0xFF414141);
const Color lushGreen = Color(0xFF006C66);
const Color matPastel = Color(0xFFB8DFD7);

//fonts
figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

//Sarah Chu
TextStyle name(Color finalColor) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color:  finalColor,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(12)));
}

//@sarah.sports & Personal Trainer
TextStyle subName(Color finalColor) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: finalColor,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(11)));
}



//Legal : Consultation for with regards to Intellectual Property, Copyrights, Trade Mark & other business ...
TextStyle desc() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(10)));
}

//Sarah's Calender
TextStyle subCalender() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(18)));
}

//2hr Personal Training
TextStyle titleEvent() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(14)));
}

//Privater Training Sessions, Adult Group Class
TextStyle subTitleEvent() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
          fontSize: figmaFontsize(10)));
}

//Schedule Event
TextStyle txtScheduleEvent() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: blackPanther,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(14)));
}

//button "add notes"
TextStyle caption5() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: blackPanther,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(9)));
}

//Coach:
TextStyle txtCoach() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: blackPanther,
          letterSpacing: 0.2,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11)));
}

//Thursday, 19 March, 2024 19:30 - 20:00
TextStyle txtTime(Color finalColor) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      color: finalColor,
      fontWeight: FontWeight.w300,
      fontSize: figmaFontsize(10),
    ),
  );
}


//Singapore Standard Time
TextStyle txtStandartTime() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(11)));
}

// in-person/call
TextStyle txtCattegory() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(9)));
}

TextStyle caption2() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: blancoWhite,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(12)));
}

TextStyle txtCapt() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(12)));
}

TextStyle txtDuration() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(11)));
}

//notes/readmore
TextStyle caption3() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: blackPanther,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11)));
}

//Button "View Your Calender" "Swipe to accept" "cancel"
TextStyle subtitle3(Color finalColor) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: finalColor,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(18)));
}

//pop up title "Terms & Conditions"
TextStyle txtTitleTerms() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(16)));
}

//icon stopwatch, run
TextStyle titleIcon() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(11)));
}

//txt "select day"
TextStyle selectDay() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(12)));
}

//Write a note to share anything that will help prepare for our session.
TextStyle message1() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: mistyGrey,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.2,
          fontSize: figmaFontsize(14)));
}

//Location will be confirmed upon confirmation.
TextStyle popupInfo() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ashGrey,
          fontWeight: FontWeight.w300,
          fontSize: figmaFontsize(11)));
}

//Schedule Session
TextStyle txtButton() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: boscoGrey,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(14)));
}

//success invitaton
TextStyle txtSucces() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: blancoWhite,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(30)));
}




