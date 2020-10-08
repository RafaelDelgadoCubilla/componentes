import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width, _height, _borde;
  Color _color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 1),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_borde),
            color: _color
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarforma,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _cambiarforma()
  {
    Random random = Random();
    setState(() {
      _width=random.nextInt(300).toDouble();
      _height=random.nextInt(300).toDouble();
      _borde=random.nextInt(100).toDouble();
      _color=Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0);
    });
  }
}