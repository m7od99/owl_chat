import 'package:flutter/material.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';

import '../../../../data/models/chats/chat.dart';
import 'giphy.dart';

class GifsButton extends StatelessWidget {
  const GifsButton({
    Key? key,
    required this.chat,
    required this.messageBloc,
  }) : super(key: key);

  final Chat chat;
  final MessageBloc messageBloc;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final GiphyGif? gif = await Giphy.pickGif(context);

        if (gif != null) {
          messageBloc.add(WriteMessage(text: gif.images!.original!.webp!));

          messageBloc.add(SendGif(chat: chat));
        }
      },
      icon: const Icon(Icons.spa_outlined),
      color: Colors.blue,
      iconSize: 25,
    );
  }
}
