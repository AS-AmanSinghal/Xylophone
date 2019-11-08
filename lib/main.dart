import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

void PlaySound(int number)
{
  final player=AudioCache();
  player.play('note$number.wav');
}

Expanded button(Color color,int number)
{
  return Expanded(
    child: FlatButton(onPressed:()
    {
      PlaySound(number);
    },
      color: color,
    ),
  );
}
class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              button(Colors.red,1),
              button(Colors.orange,2),
              button(Colors.yellow,3),
              button(Colors.green,4),
              button(Colors.lightGreen,5),
              button(Colors.blue,6),
              button(Colors.purple,7),
            ],
          )
        ),
      ),
    );
  }
}
