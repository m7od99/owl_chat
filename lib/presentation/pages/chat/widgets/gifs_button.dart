// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:owl_chat/logic/bloc/send_message_form/send_message_form_bloc.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import '../../../../data/models/chats/chat.dart';
import 'giphy.dart';

class GifsButton extends StatelessWidget {
  const GifsButton({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final GiphyGif? gif = await Giphy.pickGif(context);

        if (gif != null) {
          context.read<SendMessageFormBloc>().add(
                SendMessageFormEvent.updateText(
                  text: gif.images!.original!.webp!,
                ),
              );

          context.read<SendMessageFormBloc>().add(const SendMessageFormEvent.sendGif());
        }
      },
      icon: SvgPicture.asset(
        'assets/icons/sticker_face.svg',
        height: 30,
        color:
            Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
        fit: BoxFit.cover,
      ),
    );
  }
}
