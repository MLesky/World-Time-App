import 'package:flutter/material.dart';

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
  List<String> images = ['smart-tech', 'man', 'flat-design', 'sci-fi', 'optic-fiber', 'tech-brain'];
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
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/${images[index]}.png'),
              width: 250.0,
              height: 200.0,
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTextButtonIcon(
                    label: 'prev',
                    icon: Icons.arrow_back,
                    onpress: prevImage,
                ),
                buildTextButtonIcon(
                    label: 'next',
                    icon: Icons.arrow_forward,
                    onpress: nextImage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextButtonIcon({required String label, required IconData icon, required void Function()? onpress}){
    return TextButton.icon(
        onPressed: onpress,
        icon: Icon(
          icon,
          color: Colors.red[900],
        ),
        label: Text(
            label,
            style: TextStyle(
              color: Colors.red[900],
              fontFamily: 'ScaryDance',
              fontWeight: FontWeight.bold,
            ),
        ),
    );
  }

  void nextImage() {
    if(index < images.length - 1){
      setState(() {
        index++;
      });
    }
  }

  void prevImage() {
    if(index > 0){
      setState(() {
        index--;
      });
    }
  }
}