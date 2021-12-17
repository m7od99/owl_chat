import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart' as intl;
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/controller/multi_language_format.dart';
import 'package:provider/provider.dart';

import '../../../../logic/event_handler/settings.dart';

class MessageBub extends StatelessWidget {
  final MessageModel message;
  final VoidCallback? onDoubleTap;

  const MessageBub({Key? key, required this.message, this.onDoubleTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      child: GestureDetector(
        onDoubleTap: onDoubleTap,
        child: Hero(
          createRectTween: (begin, end) => RectTween(begin: begin, end: end),
          tag: message.text.runes,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
            child: Column(
              crossAxisAlignment:
                  message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (message.isGif != null && message.isGif == true)
                  NewGifWidget(message: message)
                else
                  Bubble(
                    message: message,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  const Bubble({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<AppSettings>(context);
    return Material(
      color: message.isMe ? Colors.indigo[300] : Colors.indigo[400],
      elevation: 0.5,
      borderRadius: message.isMe ? meBorder : otherBorder,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Row(
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment:
              message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoDirectionality(
              text: message.text,
              child: Flexible(
                child: Text(
                  message.text,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: settings.chatFontSize,
                    height: 1.05,
                  ),
                ),
              ),
            ),
            TimeWidget(
              time: format(message.time),
            ),
          ],
        ),
      ),
    );
  }

  String rtlFormat(String text) {
    if (intl.Bidi.startsWithRtl(text)) {
      return intl.BidiFormatter.RTL().wrapWithUnicode(text);
    }
    return text;
  }
}

String format(DateTime time) {
  return DateFormat('hh:mm a').format(time);
}

class TimeWidget extends StatelessWidget {
  final String time;

  const TimeWidget({required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        left: 6,
      ),
      child: Text(
        time,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}

const meBorder = BorderRadius.only(
  topLeft: Radius.circular(25),
  topRight: Radius.circular(25),

  bottomLeft: Radius.circular(25),
  // bottomRight: Radius.circular(25),
);

const otherBorder = BorderRadius.only(
  topRight: Radius.circular(25),
  topLeft: Radius.circular(25),

  bottomRight: Radius.circular(25),
//  bottomLeft: Radius.circular(25),
);

class NewGifWidget extends StatelessWidget {
  const NewGifWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageModel message;

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
                format(message.time),
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
