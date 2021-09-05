import 'dart:convert';
import 'package:http/http.dart';

class FetchTime {
  String locationUrl;
  String currentTime = '';
  String location;

  FetchTime({this.locationUrl = "Asia/Kolkata", this.location = 'India'});

  Future<String> getData() async {
    String url = 'http://worldtimeapi.org/api/timezone/$locationUrl';
    try {
      Response response = await get(Uri.parse(url));
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      String utcOffset = data['utc_offset'];
      List offset = utcOffset.replaceAll(new RegExp(r'[/+]'), '').split(":");
      DateTime calcTime = DateTime.parse(dateTime);

      calcTime = calcTime.add(
          Duration(hours: int.parse(offset[0]), minutes: int.parse(offset[1])));
      return currentTime = calcTime.toString().substring(11, 16);

      // print(currentTime);
    } catch (e) {
      return currentTime = "error occured";
      // print(e);
    }
  }
}
