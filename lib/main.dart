import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: true,
    ));
    return MaterialApp(
      title: 'Loc Reminder',
      darkTheme: ThemeData(
          appBarTheme: AppBarTheme(
              elevation: 0,
              color: Theme.of(context).scaffoldBackgroundColor,
              centerTitle: true,
              titleTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 253, 186, 71),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              iconTheme: const IconThemeData(
                  color: Color.fromARGB(255, 253, 186, 71))),
          scaffoldBackgroundColor: Colors.black,
          primaryColor: const Color.fromARGB(255, 253, 186, 71),
          primaryTextTheme: const TextTheme(
            headline6: TextStyle(
              color: Colors.white,
            ),
          ),
          canvasColor: const Color.fromARGB(255, 29, 29, 32),
          shadowColor: const Color.fromARGB(216, 29, 29, 32),
          errorColor: const Color(0xFFB00020),
          secondaryHeaderColor: const Color.fromARGB(255, 133, 86, 4),
          buttonTheme: const ButtonThemeData(
              buttonColor: Color.fromARGB(255, 253, 143, 139),
              textTheme: ButtonTextTheme.primary)),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              elevation: 0,
              color: Colors.white,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Color.fromARGB(255, 113, 74, 142),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              iconTheme:
                  IconThemeData(color: Color.fromARGB(255, 113, 74, 142))),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: const Color.fromARGB(255, 113, 74, 142),
          primaryTextTheme: const TextTheme(
            headline6: TextStyle(color: Color.fromARGB(255, 39, 39, 39)),
          ),
          canvasColor: Colors.white,
          shadowColor: const Color.fromARGB(255, 236, 236, 236),
          errorColor: const Color.fromARGB(255, 212, 0, 39),
          secondaryHeaderColor: const Color.fromARGB(255, 103, 46, 146),
          buttonTheme: const ButtonThemeData(
              buttonColor: Color.fromARGB(255, 253, 143, 139),
              textTheme: ButtonTextTheme.primary)),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loc Reminder'),
      ),
      body: Center(
        child: const Text('Home Page'),
      ),
    );
  }
}
