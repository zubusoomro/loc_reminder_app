import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserBar extends GetWidget {
  final userName, noOfTasks;
  const UserBar({Key? key, required this.userName, this.noOfTasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String tasksMsg = "You have $noOfTasks tasks today";
    if (noOfTasks == null) {
      tasksMsg = "Hurray! no tasks today";
    }
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi ${userName},',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor)),
                    const SizedBox(height: 10),
                    Text(
                      tasksMsg,
                      style: TextStyle(
                          fontSize: 15, color: Get.theme.primaryColor),
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
