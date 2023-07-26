import 'package:digital_chief_task/Model/FutureBuild.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Messages'),
              centerTitle: true,
            ),
            body: FutureBuild.futureBuilder),
      ),
    );
  }
}
