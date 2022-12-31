import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Nairobi', flag: 'cameroon.png', url: 'Africa/Nairobi');
    await instance.getTime();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'date': instance.date,
          'time': instance.time,
          'isDayTime': instance.isDayTime,
        }
    );
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
