import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage_components/userbar.dart';

class Homepage extends GetWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Loc Reminder'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(children: const <Widget>[
        UserBar(userName: "Zaid", noOfTasks: 3),
      ]),
    );
  }
}
