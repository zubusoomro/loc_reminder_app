import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/cupertino.dart";
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:loc_reminder_app/view/homepage_components/events.dart';
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
      child: Column(children: [
        UserBar(
          userName: FirebaseAuth.instance.currentUser?.displayName,
          noOfTasks: 3,
        ),
        const SearchBar(),
        const SizedBox(height: 10),
        const TodaysTasks(),
        const SizedBox(height: 40),
        const PinnedItems(),
        const SizedBox(height: 40),
        const Notes(),
        const SizedBox(height: 40),
        const HomePageEventsSection()
      ]),
    );
  }
}
