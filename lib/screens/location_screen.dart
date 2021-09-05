import 'package:demo/services/fetch_time.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List locations = [
    FetchTime(locationUrl: "Asia/Hong_Kong", location: "China(Hong Kong)")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Text("Hello This is location choosing"),
    );
  }
}
