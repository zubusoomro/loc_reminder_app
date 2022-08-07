import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";

class CreateNotesView extends GetWidget {
  const CreateNotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Notes"),
          leading: IconButton(
              icon: Icon(CupertinoIcons.back),
              onPressed: () {
                Get.back();
              }),
          actions: [
            TextButton(
              child: Text("Save",
                  style: TextStyle(
                      color: Get.theme.primaryColor,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Get.toNamed("/notes/create");
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            key: Key("notes_title"),
            style: TextStyle(
              color: Get.theme.accentColor,
              fontSize: 25,
            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              labelText: "Title",
              floatingLabelStyle: TextStyle(
                color: Colors.transparent,
                fontSize: 0,
              ),
              labelStyle: TextStyle(
                  color: Get.theme.accentColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            cursorColor: Get.theme.primaryColor,
            cursorHeight: 20,
          ),
        ])));
  }
}
