import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserBar extends GetWidget {
  final String? userName;
  final int noOfTasks;

  const UserBar({Key? key, required this.userName, required this.noOfTasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String tasksMsg = "You have $noOfTasks tasks today";
    if (noOfTasks == 0) {
      tasksMsg = "Hurray! no tasks today";
    }
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
      child: Container(
        decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Hi $userName,', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.secondary)),
                const SizedBox(height: 10),
                Text(
                  tasksMsg,
                  style: TextStyle(fontSize: 15, color: Get.theme.primaryColor),
                  softWrap: true,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
