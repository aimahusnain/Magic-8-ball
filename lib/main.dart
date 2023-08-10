import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnumbers = 1;

  void balls() {
    setState(() {
      ballnumbers = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: TextButton(
            onPressed: () {
              balls();
            },
            child: Center(child: Image.asset("images/ball$ballnumbers.png"))),
      ),
    );
  }
}
