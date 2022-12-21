import 'package:flutter/material.dart';
import 'package:flutter_academy_en/chat_app/models/chat_message.dart';
class MessageImage extends StatelessWidget {
  const MessageImage({
    Key? key,
    this.message,
    required this.index,
  }) : super(key: key);

  final ChatMessage? message;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRect(
            child: Image.network(message!.imageUrl!,
            fit: BoxFit.fitWidth,),
          )
        ],
      ),
    );
  }
}
