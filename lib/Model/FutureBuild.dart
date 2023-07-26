import 'package:flutter/cupertino.dart';
import 'package:digital_chief_task/Entities/message.dart';
import 'package:digital_chief_task/networking.dart';
import 'package:digital_chief_task/Model/MessageToButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class FutureBuild {
  static FutureBuilder<List<Widget>> futureBuilder = FutureBuilder(
    future: getData(),
    builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
      if(snapshot.hasError){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Has Error!")));
      }
      if(snapshot.hasData){
        return ListView(
          children: snapshot.data!,
        );
      } else {
        return SpinKitCircle(color: Colors.black, size: 50);
      }
    },
  );
}

Future<List<Widget>> getData() async {
  List<Message> messages = await Networking.getData();
  List<Widget> buttons = MessageToButton.makeSomeButtons(messages);
  return buttons;
}
