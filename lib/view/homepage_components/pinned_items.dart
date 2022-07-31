import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class PinnedItems extends GetWidget {
  const PinnedItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pinned Items", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.secondary)),
              IconButton(icon: Icon(Icons.edit, color: Get.theme.primaryColor), onPressed: () {})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: true,
            children: [
              item("Google I/O Extended", "Monday, 30th July", "Iqra University Main Campus", "event"),
              item("Networking Assignment", "Monday, 29th July", "lorem ipsum dolor sit amet, consectetur adipiscing elit e ", "note"),
              item("Friend's Marriage", "Monday, 29th July", "Ramada Plaza", "event"),
              item("Doctor's appointment", "Monday, 29th July", "Agha Khan Hospital", "task")
            ],
          ),
        ),
      ],
    );
  }

  Widget item(name, date, location, itemType) {
    if (itemType == "event" || itemType == "task") {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Get.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Get.theme.primaryColor, width: 1, style: BorderStyle.solid),
        ),
        width: Get.size.width * 0.8,
        height: Get.size.width * 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$name", softWrap: true, style: TextStyle(fontSize: Get.size.width * 0.04, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.secondary)),
                Text("$date", softWrap: true, style: TextStyle(fontSize: Get.size.width * 0.03, fontWeight: FontWeight.bold, color: Colors.grey)),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text("$location", softWrap: true, style: TextStyle(fontSize: Get.size.width * 0.04, color: Get.theme.primaryColor)),
            )
          ],
        ),
      );
    } else if (itemType == "note") {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Get.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Get.theme.primaryColor, width: 1, style: BorderStyle.solid),
        ),
        width: Get.size.width * 0.8,
        height: Get.size.width * 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$name", softWrap: true, style: TextStyle(fontSize: Get.size.width * 0.04, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.secondary)),
                Text("$date", softWrap: true, style: TextStyle(fontSize: Get.size.width * 0.03, color: Colors.grey)),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text("$location", softWrap: true, style: TextStyle(fontSize: Get.size.width * 0.03, color: Colors.grey)),
            )
          ],
        ),
      );
    }
    return Text("");
  }
}
