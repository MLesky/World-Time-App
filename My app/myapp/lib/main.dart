import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First Ninja App',),
      centerTitle: true,
      backgroundColor: Colors.red[900],
    ),
    body: Center(
        child: Text(
            'Hello Lespa',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'ScaryDance'
          ),
        ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => {},
      backgroundColor: Colors.red[900],
      child: const Text('click'),
    ),
  ),
));