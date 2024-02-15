import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/networking/postman/controller/add_event_controller.dart';

class TimePicker extends StatefulWidget {
  // Remove the Get.put() from here

  TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  List<TimeOfDay> times = [
    const TimeOfDay(hour: 10, minute: 00),
    const TimeOfDay(hour: 11, minute: 00),
    const TimeOfDay(hour: 12, minute: 00),
    const TimeOfDay(hour: 13, minute: 00),
  ];
  TimeOfDay? selectTime;

  @override
  Widget build(BuildContext context) {
    // Initialize the AddEventController here
    Get.put(AddEventController());

    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        ...List.generate(
          times.length,
              (index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MaterialButton(
                  color: selectTime == times[index] ? matTurquoies : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: selectTime == times[index]
                        ? const BorderSide(color: Colors.transparent)
                        : const BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    setState(() {
                      selectTime = times[index];
                    });
                  },
                  child: Text(
                    DateFormat('hh:mm').format(DateTime(2024, 02, 11, times[index].hour, times[index].minute)),
                  ),
                ),
              ),
              selectTime == times[index]
                  ? Expanded(
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      child: MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {
                          // Get the selected TimeOfDay
                          final selectedDateTime = DateTime(2024, 02, 11, selectTime!.hour, selectTime!.minute);

                          // Get the duration from the AddEventController
                          final duration = Get.find<AddEventController>().event.value?.duration ?? Duration.zero;

                          // Calculate the end time by adding duration to selectedDateTime
                          final endTime = selectedDateTime.add(duration);

                          // Convert end time to TimeOfDay
                          final endOfDay = TimeOfDay.fromDateTime(endTime);

                          // Update the AddEventController with start time and end time
                          Get.find<AddEventController>().event.update((val) {
                            val!.startTime = selectTime!;
                            val.endTime = endOfDay;
                          });
                          Get.toNamed('/eventaddnote');
                        },

                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ],
    );
  }
}
