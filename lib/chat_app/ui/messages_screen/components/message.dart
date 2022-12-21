import 'package:flutter/material.dart';
import 'package:flutter_academy_en/chat_app/models/chat_message.dart';
import 'package:flutter_academy_en/chat_app/ui/messages_screen/components/message_text.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
    required this.index,
  }) : super(key: key);

  final ChatMessage message;
  final int index;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message, int index) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return MessageText(message: message);
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: message.isSender
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
          children: [
            if(!message.isSender) ...[
              CircleAvatar(
                child: Image.asset("assets/user_5.png"),
                radius: 18,
              ),
              SizedBox(width: 10,),
            ],
            messageContain(message, index),
          ],
        ),
      ),
    );
  }
}
