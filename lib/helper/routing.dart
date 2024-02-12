import 'package:get/get.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_time.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_title.dart';
import 'package:schedule_event_getx/page/homePage/view/home_page_view.dart';

class MyAppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => HomePage(),
    ),
    GetPage(
      name: '/addEvent',
      page: () => AddEvent(),
    ),
    GetPage(
      name: '/eventAddTime',
      page: () => EventAddTime(),
    ),
  ];

  static final initialRoute = '/';
}