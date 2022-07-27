import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import "package:flutter/cupertino.dart";

import 'userbar.dart';

class HomepageBody extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [UserBar(userName: "Zaid Ahmed")]);
  }
}