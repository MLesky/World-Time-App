import 'package:flutter/material.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    late String bgImage;
    late Color bgColor;
    data =  jsonDecode(jsonEncode(ModalRoute.of(context)!.settings.arguments));
    print(data);
    print(data['isDayTime']);
    print(data['isDayTime'].runtimeType);
    // set background
    try{
      bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
      bgColor = data['isDayTime'] ? Colors.blue[700]! : const Color.fromRGBO(20, 20, 50, 1.0);
    } catch (e) {
      print('error is $e');
      bgImage = 'null.jpg';
      bgColor = Colors.indigo[600]!;
    }

    Widget space = const SizedBox(height: 20.0,);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    // print('to location');
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(
                      Icons.edit_location,
                      color: Colors.white,
                  ),
                  label: const Text(
                      'Edit Location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                  ),
                ),
                space,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                space,
                Text(
                  data['time'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 56.0,
                    color: Colors.white,
                  ),
                ),
                space,
                Text(
                  data['date'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
