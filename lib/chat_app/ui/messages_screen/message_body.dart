import 'package:flutter/material.dart';
import 'package:flutter_academy_en/chat_app/ui/messages_screen/components/chat_input_field.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatInputField()
      ],
    );
  }
}
