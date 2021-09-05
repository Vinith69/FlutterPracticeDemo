import 'package:demo/screens/home_screen.dart';
import 'package:demo/screens/loading_screen.dart';
import 'package:demo/screens/location_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => LoadingScreen(),
        "/home": (context) => HomeScreen(),
        "/location": (context) => LocationScreen()
      },
    );
  }
}
