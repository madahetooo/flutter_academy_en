import 'package:flutter/material.dart';
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
      ],
    ),
    );
  }
}
