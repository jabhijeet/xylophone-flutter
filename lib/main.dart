import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Xylophone',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getXylophoneKey('do',Colors.red, 1),
              getXylophoneKey('re',Colors.orange, 2),
              getXylophoneKey('mi',Colors.yellow, 3),
              getXylophoneKey('fa',Colors.green, 4),
              getXylophoneKey('sol',Colors.blue, 5),
              getXylophoneKey('la',Colors.indigo, 6),
              getXylophoneKey('ti',Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget getXylophoneKey(String sound, Color color, int soundNum) => Expanded(
      child: FlatButton(
        child: Text(sound),
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );


  void playSound(int num) {
    final player = new AudioCache();
    player.play('note$num.wav');
  }
}
