import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

    // make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Cairo'));
    Map data = jsonDecode(response.body);
    // print("data: $data");

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    // print("$datetime \n$offset");

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    // print(now);
    now = now.add(Duration(hours: int.parse(offset)));
    // print("now: $now");

  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Choose location screen'),
    );
  }
}
