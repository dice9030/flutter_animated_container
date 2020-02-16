import 'package:flutter/material.dart';
import 'package:flutter_container/src/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/' :(BuildContext context ) => HomePage()
      },
    );
  }
}