import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends GetWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = Text("Loc Reminder", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor));
    var welcomeNote = Text("Manage Your Tasks With", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [welcomeNote, title],
            ),
          ),
          Image(image: const AssetImage('assets/images/get_started_image.png'), width: MediaQuery.of(context).size.width * 0.8),
          const Padding(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            child: Text("You need our app when you are overwhelmed with the number of tasks you have on your mind and you can't remember them",
                style: TextStyle(fontSize: 18, color: Colors.grey), textAlign: TextAlign.center),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(color: Theme.of(context).primaryColor),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.06,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Theme.of(context).canvasColor),
                        foregroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                        minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width * 0.5, MediaQuery.of(context).size.height * 0.08)),
                        elevation: MaterialStateProperty.all(5),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text("Get Started", style: TextStyle(fontSize: 15))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
