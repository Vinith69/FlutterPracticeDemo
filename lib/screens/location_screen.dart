import 'package:demo/services/fetch_time.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<FetchTime> locations = [
    FetchTime(locationUrl: "Asia/Hong_Kong", location: "China (Hong Kong)"),
    FetchTime(locationUrl: "America/New_York", location: "USA (New York)"),
    FetchTime(locationUrl: "Asia/Dubai", location: "Dubai"),
    FetchTime(locationUrl: "Asia/Jakarta", location: "Indonesia"),
    FetchTime(locationUrl: "Asia/Seoul", location: "Korea"),
    FetchTime(locationUrl: "Europe/London", location: "London"),
    FetchTime(locationUrl: "Europe/Moscow", location: "Russia"),
    FetchTime(locationUrl: "Europe/Paris", location: "Paris"),
  ];

  void updateTheTime(int i) async {
    FetchTime fetchTime = FetchTime(
        location: locations[i].location, locationUrl: locations[i].locationUrl);
    String currentTime = await fetchTime.getData();
    Navigator.pop(context,
        {'currentTime': currentTime, 'location': locations[i].location});
  }

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
                    updateTheTime(i);
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
