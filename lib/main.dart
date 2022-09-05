import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'note_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sticky Notes',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: NoteListPage(),
    );
  }
}