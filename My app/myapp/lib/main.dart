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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: const Text('one'),
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: const Text('two'),
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            color: Colors.amber,
            child: const Text('three'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[900],
        child: const Text('click'),
      ),
    );
  }
}