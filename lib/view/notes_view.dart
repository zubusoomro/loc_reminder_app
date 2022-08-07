import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";

class NotesView extends GetWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Get.theme.primaryColor,
        appBar: AppBar(
          backgroundColor: Get.theme.primaryColor,
          titleTextStyle: TextStyle(
              color: Get.theme.scaffoldBackgroundColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                CupertinoIcons.back,
                color: Get.theme.scaffoldBackgroundColor,
              )),
          title: Text("Notes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notes",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Get.theme.scaffoldBackgroundColor)),
                      IconButton(
                        icon: Icon(CupertinoIcons.add_circled_solid,
                            color: Get.theme.scaffoldBackgroundColor),
                        onPressed: () {
                          Get.toNamed("/notes/create");
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Stack(alignment: Alignment.bottomCenter, children: [
                Container(
                  height: Get.mediaQuery.size.height,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 1.0, offset: Offset.infinite)
                    ],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Get.theme.scaffoldBackgroundColor,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 5,
                            width: 45,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: Get.mediaQuery.size.width * 0.9,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Groceries",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Colors.white.withOpacity(0.9))),
                                    Icon(CupertinoIcons.pencil,
                                        color: Colors.white.withOpacity(0.9)),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: Get.mediaQuery.size.width * 0.9,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Groceries",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Colors.white.withOpacity(0.9))),
                                    Icon(CupertinoIcons.pencil,
                                        color: Colors.white.withOpacity(0.9)),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: Get.mediaQuery.size.width * 0.9,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Groceries",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Colors.white.withOpacity(0.9))),
                                    Icon(CupertinoIcons.pencil,
                                        color: Colors.white.withOpacity(0.9)),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: Get.mediaQuery.size.width * 0.9,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Groceries",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Colors.white.withOpacity(0.9))),
                                    Icon(CupertinoIcons.pencil,
                                        color: Colors.white.withOpacity(0.9)),
                                  ],
                                )),
                          )
                        ])
                      ]),
                ),
              ]),
            ],
          ),
        ));
  }
}
