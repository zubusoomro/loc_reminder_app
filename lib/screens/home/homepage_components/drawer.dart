import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_reminder_app/screens/home/abstracthomepage.dart';

class CustomAdvancedDrawer extends AbstractHomePage {
  const CustomAdvancedDrawer({Key? key, this.advancedDrawerController}) : super(key: key);
  final advancedDrawerController;

  @override
  Widget build(BuildContext context) {
    String name = controller.getUserData()?.displayName ?? '';
    String email = controller.getUserData()?.email ?? '';
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
              ListTile(
                title: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle: Text(email, style: const TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                  const ListTile(leading: Icon(CupertinoIcons.map_pin_ellipse), title: Text("Map")),
                  const ListTile(leading: Icon(CupertinoIcons.calendar), title: Text("Calendar")),
                  ListTile(
                      onTap: () {
                        Get.toNamed('/notes');
                      },
                      leading: const Icon(CupertinoIcons.create),
                      title: const Text("Notes")),
                  const ListTile(leading: Icon(CupertinoIcons.settings), title: Text("Settings")),
                  const ListTile(leading: Icon(CupertinoIcons.info), title: Text("About")),
                  const ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
