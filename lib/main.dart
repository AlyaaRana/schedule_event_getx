import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:schedule_event_getx/helper/routing.dart';
import 'package:schedule_event_getx/page/addEvent/event/day/view/event_add_day.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/view/event_addnote_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: MyAppRoutes.initialRoute,
      getPages: MyAppRoutes.routes,
    );
  }
}

