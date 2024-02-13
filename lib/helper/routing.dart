import 'package:get/get.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_time.dart';
import 'package:schedule_event_getx/page/addEvent/view/event_add_title.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_session/type_duration_session_widget.dart';
import 'package:schedule_event_getx/page/homePage/view/home_page_view.dart';
import 'package:schedule_event_getx/page/sarahCalender/view/list_calender_view.dart';

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
    GetPage(
      name: '/viewTheCalender',
      page: () => ListCalenderView(),
    ),
    GetPage(
      name: '/threecontent',
      page: () => TypeDurationSession(),
    ),
  ];

  static final initialRoute = '/';
}