import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends GetWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = Text("Loc Reminder",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Get.theme.primaryColor));
    var welcomeNote = Text("Manage Your Tasks With",
        style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Get.theme.colorScheme.secondary));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Get.mediaQuery.size.height * 0.05),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [welcomeNote, title],
            ),
          ),
          Image(
              image: const AssetImage('assets/images/get_started_image.png'),
              width: Get.mediaQuery.size.width * 0.8),
          const Padding(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            child: Text(
                "You need our app when you are overwhelmed with the number of tasks you have on your mind and you can't remember them",
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center),
          ),
          SizedBox(height: Get.mediaQuery.size.height * 0.005),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: Get.mediaQuery.size.width,
                  height: 80,
                  decoration: BoxDecoration(color: Get.theme.primaryColor),
                ),
                Positioned(
                  top: Get.mediaQuery.size.height * 0.06,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Get.theme.scaffoldBackgroundColor),
                        foregroundColor:
                            MaterialStateProperty.all(Get.theme.primaryColor),
                        minimumSize: MaterialStateProperty.all(Size(
                            Get.mediaQuery.size.width * 0.5,
                            Get.mediaQuery.size.height * 0.08)),
                        elevation: MaterialStateProperty.all(10),
                      ),
                      onPressed: () {
                        Get.toNamed('/login');
                      },
                      child:
                          Text("Get Started", style: TextStyle(fontSize: 15))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
