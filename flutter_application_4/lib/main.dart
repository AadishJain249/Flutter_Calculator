import 'package:flutter/material.dart';
import 'home_page.dart';
void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new HomePage(),
    );
  }
}
