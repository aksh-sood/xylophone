import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playsound (int x){
    final player = AudioCache();
    player.play('note$x.wav');
  }
  Expanded buildkey ( {Color color,int x}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(x);
          },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body:SafeArea(
        child:Container(
          color:Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color:Colors.red,x:1),
              buildkey(color:Colors.purple,x:2),
              buildkey(color:Colors.brown,x:3),
              buildkey(color:Colors.yellow,x:4),
              buildkey(color:Colors.green,x:5),
              buildkey(color:Colors.orange,x:6),
              buildkey(color:Colors.blue,x:7),
            ],
              ),
          ),
        )
      ),
    );
  }
}


