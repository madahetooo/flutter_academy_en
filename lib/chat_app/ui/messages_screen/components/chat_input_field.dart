import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final messageController = TextEditingController();

  void initState(){
    super.initState();
    messageController.addListener(() {
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: Colors.grey[800],
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "Type a message...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  messageController.text.isEmpty
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file_outlined,
                            color: Colors.grey[800],
                          ),
                        )
                      : SizedBox(),
                  messageController.text.isEmpty
                      ? SizedBox(
                          width: 5.0,
                        )
                      : SizedBox(),
                  messageController.text.isEmpty
                      ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey[800],
                    ),
                  )
                      : SizedBox(),
                  messageController.text.isNotEmpty
                  ? SizedBox(width: 5.0,) :
                      SizedBox(),
                  messageController.text.isNotEmpty
                      ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.green,
                    ),
                  )
                      : SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
