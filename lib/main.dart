import 'package:flutter/material.dart';
import 'package:to_do_app/pages/notes%20view/screens/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: NotesView(),
    );
  }
}
   