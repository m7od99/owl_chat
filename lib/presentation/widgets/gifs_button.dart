import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/widgets/send_message_field.dart';

class GifsButton extends StatelessWidget {
  const GifsButton({
    Key? key,
    required this.user,
    required this.chat,
    required this.control,
    required this.widget,
  }) : super(key: key);

  final UserState user;
  final Chat chat;
  final MessageControl control;
  final SendMessageField widget;

  bool isMe(String messageSender) {
    if (messageSender == user.userId) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final GiphyClient client = await GiphyClient(apiKey: 'OhchXW2GJnCabq2ge2fBHYQAoqYgtOFJ', randomId: '');

        final GiphyGif? gif = await GiphyGet.getGif(context: context, searchText: 'Search', apiKey: 'OhchXW2GJnCabq2ge2fBHYQAoqYgtOFJ');

        if (gif != null) {
          final message = Message(
            sender: user.userId,
            receiver: chat.other!.id,
            text: gif.images!.original!.webp!,
            isSend: true,
            time: Timestamp.now(),
            isMe: isMe(chat.other!.id),
            isGif: true,
          );
          control.sendMessage(message, chat.id);
          chat.lastMessage = 'gif';
          chat.time = Timestamp.now();
          control.createChat(widget.chat);
        }
      },
      icon: const Icon(Icons.sticky_note_2_sharp),
      color: Colors.blue,
      iconSize: 30,
    );
  }
}
