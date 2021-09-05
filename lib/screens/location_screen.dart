import 'package:demo/services/fetch_time.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List locations = [
    FetchTime(locationUrl: "Asia/Hong_Kong", location: "China (Hong Kong)")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Choose a location",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, i) {
              return SizedBox(
                width: 200,
                height: 100,
                child: InkWell(
                  splashColor: Colors.blueGrey[900],
                  onTap: () {
                    print(locations[i].location.toString());
                  },
                  child: Card(
                    child: Center(
                        child: Text(
                      locations[i].location,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
