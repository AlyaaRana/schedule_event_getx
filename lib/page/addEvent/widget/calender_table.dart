import 'package:flutter/material.dart';
import 'package:schedule_event_getx/page/addEvent/controller/event_controller.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class CalendarTable extends StatefulWidget {
  final Function(DateTime) onDateSelected;

  const CalendarTable({Key? key, required this.onDateSelected}) : super(key: key);

  @override
  State<CalendarTable> createState() => _CalendarTableState();
}

class _CalendarTableState extends State<CalendarTable> {
  DateTime selectedDate = DateTime.now();
  final AddEventController eventController = Get.find<AddEventController>();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDate = day;
      eventController.updateDate(day);
    });

    // Trigger the callback
    widget.onDateSelected(day);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              DateFormat('yyyy-MM-dd').format(selectedDate),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
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
}
