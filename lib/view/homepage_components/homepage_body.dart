import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import "package:flutter/cupertino.dart";
import 'package:loc_reminder_app/view/homepage_components/notes.dart';
import 'package:loc_reminder_app/view/homepage_components/pinned_items.dart';
import 'package:loc_reminder_app/view/homepage_components/searchbar.dart';
import 'package:loc_reminder_app/view/homepage_components/todays_tasks.dart';

import 'userbar.dart';

class HomepageBody extends GetWidget {
  const HomepageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        UserBar(
          userName: "Zaid Ahmed",
          noOfTasks: 3,
        ),
        SearchBar(),
        SizedBox(height: 10),
        TodaysTasks(),
        SizedBox(height: 40),
        PinnedItems(),
        SizedBox(height: 40),
        Notes()
      ]),
    );
  }
}
