import 'package:flutter/material.dart';
import 'package:flutter_academy_en/chat_app/ui/messages_screen/message_body.dart';
class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Eslam Medhat"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam),),
        IconButton(onPressed: (){}, icon: Icon(Icons.call),),
        IconButton(onPressed: (){}, icon: Icon(Icons.logout),),
        SizedBox(width: 10,)
      ],
    ),
      body: MessageBody(),
    );
  }
}
