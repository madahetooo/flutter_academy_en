import 'package:flutter/material.dart';
import 'package:flutter_academy_en/chat_app/models/chats.dart';
import 'package:flutter_academy_en/chat_app/ui/chats_list/components/chats_card.dart';
import 'package:flutter_academy_en/chat_app/ui/chats_list/components/filloutline_button.dart';
import 'package:flutter_academy_en/chat_app/ui/messages_screen/message_screen.dart';

class ChatsBody extends StatelessWidget {
  const ChatsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Colors.green,
          child: Row(
            children: [
              FillOutlineButton(
                  press: () {}, text: "Recent Messages", isFilled: true),
              const SizedBox(
                width: 10,
              ),
              FillOutlineButton(press: () {}, text: "Active", isFilled: false),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
                itemCount: chatsData.length,
              itemBuilder: (context, index) =>ChatCard(
                chats: chatsData[index],
                press: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>MessageScreen()));
                },
              )),
        )
      ],
    );
  }
}
