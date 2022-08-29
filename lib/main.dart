import 'package:flutter/material.dart';
import 'Join.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Do You Like',
      home: Join(),
    );
  }
}

