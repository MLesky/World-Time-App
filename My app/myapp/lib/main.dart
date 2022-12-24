import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Ninja App',),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(30.0),
        color: Colors.red[100],
        child: const Text('hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[900],
        child: const Text('click'),
      ),
    );
  }
}