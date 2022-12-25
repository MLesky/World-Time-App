import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int minutes = 0, seconds = 0, hours = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Ninja App',),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Image.asset('assets/images/man.png'),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('$seconds'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('$minutes'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('$hours'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => seconds++);
          if(seconds == 10){
            setState((){
              seconds = 0;
              minutes++;
            });
          }
          if(minutes == 10){
            setState((){
              minutes = 0;
              hours++;
            });
          }
        },
        backgroundColor: Colors.red[900],
        child: const Text('click'),
      ),
    );
  }
}