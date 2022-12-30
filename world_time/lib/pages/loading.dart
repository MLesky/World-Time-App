// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Cairo', flag: 'cameroon.png', url: 'Africa/Cairo');
    await instance.getTime();
    Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
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
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading...'),
      ),
    );
  }
}
