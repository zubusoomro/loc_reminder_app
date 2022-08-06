import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class TodaysTasks extends GetWidget {
  const TodaysTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Todays Tasks",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Get.theme.colorScheme.secondary)),
              IconButton(
                  icon: Icon(CupertinoIcons.add_circled_solid,
                      color: Get.theme.primaryColor),
                  onPressed: () {})
            ],
          ),
        ),
        task("Doctor's appointment", "1:00 PM", "Agha Khan Hospital",
            Colors.blueAccent),
        task("Meeting with Boss", "3:30 PM", "X Software Solutions",
            Colors.teal),
        task("Pick up glasses", "6:00 PM", "Look Optics, Gulistan-e-Johar",
            Colors.deepOrangeAccent),
      ],
    );
  }

  Widget task(name, time, location, color) {
    return Container(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("$time",
                    style: const TextStyle(fontSize: 15, color: Colors.grey))),
            Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                width: Get.mediaQuery.size.width * 0.8,
                height: Get.mediaQuery.size.width * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("- $location ",
                              style: TextStyle(
                                  fontSize: name.length * 0.6,
                                  color: Color.fromARGB(255, 53, 53, 53))),
                          Icon(CupertinoIcons.location,
                              color: Color.fromARGB(255, 53, 53, 53))
                        ],
                      ),
                    ],
                  )),
                ))
          ],
        ));
  }
}
