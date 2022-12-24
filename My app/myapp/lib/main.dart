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
      body: const Center(
        child: Image(
          image: AssetImage('assets/images/smart-tech.png'),
          //image: NetworkImage('https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg?size=626&ext=jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.red[900],
        child: const Text('click'),
      ),
    );
  }
}