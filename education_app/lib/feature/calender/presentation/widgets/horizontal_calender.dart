
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalCalendar extends StatefulWidget {
  const HorizontalCalendar({super.key});

  @override
  State<HorizontalCalendar> createState() => _HorizontalCalendarState();
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  DateTime selectedDay = DateTime.now();
  List<DateTime> getCurrentWeek(DateTime focusedDay) {
    final monday = focusedDay.subtract(
      Duration(days: focusedDay.weekday - 1),
    );

    return List.generate(7, (i) => monday.add(Duration(days: i)));
  }
  @override
  Widget build(BuildContext context) {
    final weekDays = getCurrentWeek(selectedDay);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: weekDays.map((date) {
          final isSelected = DateUtils.isSameDay(date, selectedDay);

          return GestureDetector(
            onTap: () {
              setState(() => selectedDay = date);
            },
            child: Column(
              children: [
                Text(
                  DateFormat('EEE').format(date),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  width: 36,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(
                      color: isSelected ? Colors.black : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
