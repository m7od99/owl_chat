import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/message.dart';

import 'message_bubble.dart';

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
          left: message.isMe ? 60 : 0, right: message.isMe ? 0 : 60, top: 10),
      child: Stack(
        children: [
          ClipRRect(
            child: CachedNetworkImage(
              imageUrl: message.text,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Text(
                format(message.time),
                style: TextStyle(
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
