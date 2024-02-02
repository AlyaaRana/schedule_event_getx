import 'package:flutter/material.dart';
import 'package:schedule_event_getx/view/event_hasbeenseen_view.dart';
import 'package:schedule_event_getx/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: EventSend()
    );
  }
}

