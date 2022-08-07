import "package:flutter/cupertino.dart";
import 'package:loc_reminder_app/screens/home/abstracthomepage.dart';

import 'events.dart';
import 'notes.dart';
import 'pinned_items.dart';
import 'searchbar.dart';
import 'todays_tasks.dart';
import 'userbar.dart';

class HomepageBody extends AbstractHomePage {
  const HomepageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        UserBar(),
        SearchBar(),
        SizedBox(height: 10),
        TodaysTasks(),
        SizedBox(height: 40),
        PinnedItems(),
        SizedBox(height: 40),
        Notes(),
        SizedBox(height: 40),
        HomePageEventsSection()
      ]),
    );
  }
}
