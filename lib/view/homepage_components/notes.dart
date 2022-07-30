import "package:flutter/material.dart";
import "package:get/get.dart";

class Notes extends GetWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
          child: Text("Notes", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.secondary)),
        ),
        Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 255, 132, 173)),
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 132, 196, 255)),
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 255, 237, 132)),
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 245, 132, 255)),
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 177, 255, 132)),
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 255, 132, 173)),
                item("Doctor's Detail", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida imperdiet sem sed dictum.", const Color.fromARGB(255, 255, 132, 132)),
              ],
            )),
      ],
    );
  }

  Widget item(name, content, color) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  IconButton(icon: const Icon(Icons.edit, color: Colors.white), onPressed: () {}),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(content, style: const TextStyle(color: Color.fromARGB(106, 39, 39, 39), fontSize: 15)),
            ],
          )),
    );
  }
}