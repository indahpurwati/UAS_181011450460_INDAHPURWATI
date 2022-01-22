import 'package:flutter/material.dart';
import 'package:nim_181011450493/cuaca/cuaca.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuaca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Cuaca(),
    );
  }
}
