import 'package:flutter/material.dart';

List<String> images = ['smart-tech', 'man', 'flat-design'];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int index = 0;
  String navigateText = 'next';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Ninja App $index',),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/${images[index]}.png'),
          //image: NetworkImage('https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg?size=626&ext=jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: navigateTo,
        backgroundColor: Colors.red[900],
        child: Text(navigateText),
      ),
    );
  }

  void navigateTo() {
    if(index >= images.length-1){
      setState(() => index = 0);
    } else {
      setState(() => index++);
    }
  }
}