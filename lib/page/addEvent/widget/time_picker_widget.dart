import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

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
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ...List.generate(
          times.length,
              (index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MaterialButton(
                  color: selectTime == times[index]
                      ? Colors.purple
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: selectTime == times[index]
                        ? const BorderSide(color: Colors.purple)
                        : const BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    setState(() {
                      selectTime = times[index];
                    });
                  },
                  child: Text(
                    DateFormat('hh:mm').format(DateTime(2024, 02, 11,
                        times[index].hour, times[index].minute)),
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
                          side: const BorderSide(
                              width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
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
