import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, this.location: "", this.currentTime: ""})
      : super(key: key);

  final String location;
  final String currentTime;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      minimum: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black, padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.pushNamed(context, "/location");
              },
              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              label: Text(
                "Edit the location",
                style: TextStyle(color: Colors.white),
              ),
            ),
            //* Text button end------------------------------------------------
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Current Time in " +
                  widget.location +
                  " is " +
                  widget.currentTime,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    ));
  }
}
