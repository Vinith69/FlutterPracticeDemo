import 'package:demo/screens/home_screen.dart';
import 'package:demo/services/fetch_time.dart';

import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoading = true;
  String newTime = '';
  String location = '';

  void fetchData() async {
    FetchTime fetchTime = FetchTime();
    newTime = await fetchTime.getData();
    setState(() {
      location = fetchTime.location;
      newTime = newTime;
      isLoading = false;
    });
    print("inside fetch data in loading screen " + newTime);
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: isLoading
                ? Text("loading")
                : HomeScreen(
                    location: location,
                    currentTime: newTime,
                  )
            //  Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       children: [
            //         ElevatedButton.icon(
            //             onPressed: () {},
            //             icon: Icon(Icons.location_on_outlined),
            //             label: Text("Edit Location")),
            //         Text("Current Time in " + location + " is " + newTime),
            //       ],
            //     ),
            //   ),
            ));
  }
}
