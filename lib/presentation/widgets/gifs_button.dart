import 'package:flutter/material.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/logic/event_handler/send_message_state.dart';
import 'package:provider/provider.dart';
import 'giphy.dart';

class GifsButton extends StatelessWidget {
  const GifsButton({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    final sendMessage = Provider.of<SendMessageState>(context);

    return IconButton(
      onPressed: () async {
        final GiphyGif? gif = await Giphy.pickGif(context);

        if (gif != null) {
          sendMessage.updateMessage(gif.images!.original!.webp!);
          sendMessage.sendGif(chatId: chat.id, receiverId: chat.other!.id);
          sendMessage.updateChatStateGif(chat);
        }
      },
      icon: const Icon(Icons.spa_outlined),
      color: Colors.blue,
      iconSize: 25,
    );
  }
}
