import 'package:flutter/material.dart';
import 'package:digital_chief_task/Entities/message.dart';
import 'package:digital_chief_task/Pages/MessagePage.dart';

class MessageToButton {
  static List<Widget> makeSomeButtons(List<Message> messages) {
    List<Widget> buttons = [];
    messages.forEach((element) {
      buttons.add(CloudMessage(element: element,));
      buttons.add(SizedBox(height: 30));
    });
    return buttons;
  }
}

class CloudMessage extends StatelessWidget {

  Message element;

  CloudMessage({
    super.key,
    required this.element
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage(message: element)));
            },
            child: Text(
              element.body,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
