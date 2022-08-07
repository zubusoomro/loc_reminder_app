import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:loc_reminder_app/screens/home/abstracthomepage.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePageEventsSection extends AbstractHomePage {
  const HomePageEventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var details = {"calendarType": "week"};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Events", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.secondary)),
                  Text(DateTime.now().toString().substring(0, 10), style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.calendar_circle_fill,
                    color: Get.theme.primaryColor,
                    size: 35,
                  ))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                TableCalendar(
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    calendarFormat: CalendarFormat.week,
                    sixWeekMonthsEnforced: true,
                    headerVisible: false,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    rowHeight: 80,
                    calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                            color: Get.theme.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [BoxShadow(color: Get.theme.shadowColor, blurRadius: 100, offset: const Offset(0, 0))]))),
                const SizedBox(height: 30),
                eventContainer("Doctor's Appointment", "10:00 AM", Colors.blue),
                eventContainer("Doctor's Appointment", "10:00 AM", Colors.teal),
                eventContainer("Doctor's Appointment", "10:00 AM", Colors.yellow)
              ],
            ))
      ],
    );
  }

  eventContainer(name, time, color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              Text(time),
            ],
          )),
    );
  }
}
