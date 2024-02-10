import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_time.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_title.dart';
import 'package:schedule_event_getx/page/addNote/view/event_addnote_view.dart';
import 'package:schedule_event_getx/page/homePage/view/home_page_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        home: EventAddTime()
    );
  }
}

