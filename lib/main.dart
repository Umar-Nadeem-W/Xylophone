import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  Widget soundTile({required Color color, required String soundNo})
  {
    final player = AudioPlayer(); //audioCache is now ob
    return   Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color, minimumSize: Size(double.infinity, 111),),
        onPressed: (){
          player.play("sounds/m$soundNo.wav");},
        child: Text(""),),
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: ListView(

              children: [
                soundTile(color: Colors.blue,soundNo: "1"),
                soundTile(color: Colors.green,soundNo: "2"),
                soundTile(color: Colors.black,soundNo: "3"),
                soundTile(color: Colors.teal,soundNo: "4"),
                soundTile(color: Colors.pink,soundNo: "5"),
                soundTile(color: Colors.indigo,soundNo: "6"),
                soundTile(color: Colors.orange,soundNo: "7"),

              ],
        ),
      ),
    );
  }

}