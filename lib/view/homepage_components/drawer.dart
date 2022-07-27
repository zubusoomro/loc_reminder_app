import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '../homepage.dart';

class CustomAdvancedDrawer extends GetWidget {
  const CustomAdvancedDrawer({Key? key, this.advancedDrawerController})
      : super(key: key);
  final advancedDrawerController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: Get.width * 0.05, top: Get.height * 0.1),
        child: ListTileTheme(
          textColor: Get.theme.canvasColor,
          iconColor: Get.theme.canvasColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTile(
                title: Text(
                  "Zaid Ahmed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle:
                    Text("zaid3614@gmail.com", style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      ListTile(
                          leading: Icon(CupertinoIcons.map_pin_ellipse),
                          title: Text("Map")),
                      ListTile(
                          leading: Icon(CupertinoIcons.calendar),
                          title: Text("Calendar")),
                      ListTile(
                          leading: Icon(CupertinoIcons.create),
                          title: Text("Notes")),
                      ListTile(
                          leading: Icon(CupertinoIcons.settings),
                          title: Text("Settings")),
                      ListTile(
                          leading: Icon(CupertinoIcons.info),
                          title: Text("About")),
                      ListTile(
                          leading: Icon(Icons.logout), title: Text("Logout")),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
