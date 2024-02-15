import 'package:get/get.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/view/event_addnote_view.dart';
import 'package:schedule_event_getx/page/addEvent/event/note/widget/listview_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/sent/view/event_hasbeenseen_view.dart';
import 'package:schedule_event_getx/page/addEvent/event/time/view/event_add_time.dart';
import 'package:schedule_event_getx/page/addEvent/event/time/widget/type_duration_session/type_duration_session_widget.dart';
import 'package:schedule_event_getx/page/addEvent/event/title_type_duration/view/event_add_title.dart';
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
    GetPage(
      name: '/listview',
      page: () => EventListView(),
    ),
    GetPage(
      name: '/eventaddnote',
      page: () => EventAddNote(),
    ),
    GetPage(
      name: '/eventsend',
      page: () => EventSend(),
    ),
  ];

  static final initialRoute = '/';
}