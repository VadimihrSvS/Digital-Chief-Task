import 'package:flutter/material.dart';
import 'package:digital_chief_task/Entities/message.dart';

class MessagePage extends StatelessWidget {
  final Message message;
  const MessagePage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text(message.title)),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Container(child: Text('UserId: ${message.userId.toString()}')),
            Container(child: Text('id: ${message.id.toString()}')),
            Container(child: Text(message.body))],
          ),
        ),
      ),
    );
  }
}
