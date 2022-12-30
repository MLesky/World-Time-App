import 'package:flutter/material.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data =  jsonDecode(jsonEncode(ModalRoute.of(context)!.settings.arguments));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () {
                print('to location');
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location'),
            )
          ],
        ),
      ),
    );
  }
}
