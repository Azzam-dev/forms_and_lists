import 'package:flutter/material.dart';
import 'package:form_and_lists/pages/PageTwo.dart';
import 'pages/PageOne.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageTwo(),
    );
  }
}
