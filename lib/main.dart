import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      title: 'Magic 8 Ball App',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Magic 8 Ball'),
        ),
        body: MagicEightBallPage(),
      ),
    ));

class MagicEightBallPage extends StatefulWidget {
  @override
  _MagicEightBallPageState createState() => _MagicEightBallPageState();
}

class _MagicEightBallPageState extends State<MagicEightBallPage> {
  int magicEightBallNumber = 1;
  void changeMagicEightBall() {
    setState(() {
      magicEightBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeMagicEightBall();
                },
                child: Image.asset('images/ball$magicEightBallNumber.png')),
          )
        ],
      ),
    );
  }
}
