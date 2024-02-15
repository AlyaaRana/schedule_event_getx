import 'package:flutter/material.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:get/get.dart';

class CalendarTable extends StatefulWidget {
  CalendarTable({Key? key}) : super(key: key);

  @override
  State<CalendarTable> createState() => _CalendarTableState();

  DateTime getSelectedDate(BuildContext context) {
    return (_CalendarTableState.of(context) as _CalendarTableState).selectedDate;
  }
}

class _CalendarTableState extends State<CalendarTable> {
  DateTime selectedDate = DateTime.now();
  final AddEventController eventController = Get.find<AddEventController>();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDate = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Pass the selected date back to the previous screen
              eventController.updateDate(selectedDate);
              Get.back();
            },
            child: Text("Select Day"),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: TableCalendar(
                locale: "en_US",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, selectedDate),
                focusedDay: selectedDate,
                firstDay: DateTime.utc(2010, 1, 1),
                lastDay: DateTime.utc(2030, 12, 30),
                onDaySelected: _onDaySelected,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static _CalendarTableState of(BuildContext context) =>
      context.findAncestorStateOfType<_CalendarTableState>()!;
}
