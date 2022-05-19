import 'package:flutter/material.dart';
import 'package:zen_app/holdButton.dart';
import 'package:zen_app/landscape.dart';

import 'background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zen',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hi")),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Background(),
              Center(
                child: Container(
                  height: 1000,
                  width: 500,
                  // color: Colors.blue,
                  child: Align(
                    alignment: Alignment(0, 0.7),
                    child: HoldButton(),
                  ),
                ),
              ),
              Landscape(),
            ],
          ),
        ),
      ),
    );
  }
}
