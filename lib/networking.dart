import 'package:digital_chief_task/Entities/message.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Networking{
  static Future<List<Message>> getData() async {
    List<Message> messages = [];
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    var response = await http.get(url);
    var jsonResponse;
    if (response.statusCode == 200) {
      jsonResponse = convert.jsonDecode(response.body);
      Message message;
      jsonResponse.forEach((element) {
        message = Message(id: element['id'],
            userId: element['userId'],
            title: element['title'],
            body: element['body']);
        messages.add(message);
      });
      return messages;
    } else {
      throw Exception("Не-а");
    }
  }
}