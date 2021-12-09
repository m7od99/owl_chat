import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/helper/helper.dart';

import '../../../../data/models/chats/message.dart';

class GifWidget extends StatelessWidget {
  const GifWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: message.isMe ? 60 : 0,
        right: message.isMe ? 0 : 60,
        top: 10,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: message.text,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Text(
                Helper.format(message.time),
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
