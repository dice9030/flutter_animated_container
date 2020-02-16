import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  _animacionSegundos(){
    new Timer(Duration(seconds: 3), (){
      print('Hola diego');
      _pruebaAnimacion();
      setState(() {
           _pruebaAnimacion();
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    _animacionSegundos();
    return Scaffold(
      appBar: AppBar(
        title: Text('MY Title'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Text('data'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        onPressed: () {
          setState(() {
           _pruebaAnimacion();
          });
        },
      ),
    );
  }

 _pruebaAnimacion(){
   final random = Random();

            _width = random.nextInt(300).toDouble();
            _heigth = random.nextInt(300).toDouble();

            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );

               // Generate a random border radius.
                _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble());
              
}
}
