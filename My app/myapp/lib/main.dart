import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First Ninja App',),
      centerTitle: true,
    ),
    body: const Center(
        child: Text('Hello Lespa'),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Text('click'),
      onPressed: () => {},
    ),
  ),
));