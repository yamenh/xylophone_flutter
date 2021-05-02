import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded myFunc({Color s, int x}) {
    return Expanded(
      child: FlatButton(
        color: s,
        onPressed: () {
          playSound(x);
        },
        child: Icon(Icons.music_note),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'XYLOPHONE',
              style: TextStyle(color: Colors.pink),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            myFunc(s: Colors.red, x: 1),
            myFunc(s: Colors.orange, x: 2),
            myFunc(s: Colors.yellow, x: 3),
            myFunc(s: Colors.green, x: 4),
            myFunc(s: Colors.teal, x: 5),
            myFunc(s: Colors.blue, x: 6),
            myFunc(s: Colors.purple, x: 7),
          ],
        ),
      ),
    );
  }
}
