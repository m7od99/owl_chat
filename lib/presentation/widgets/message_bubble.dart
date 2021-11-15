import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart' as intl;
import 'package:provider/provider.dart';

import '../../data/models/message.dart';
import '../../logic/event_handler/settings.dart';
import 'gif_widget.dart';

class MessageBubble extends StatelessWidget {
  final Message message;
  final VoidCallback? onDoubleTap;

  const MessageBubble({Key? key, required this.message, this.onDoubleTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Hero(
        createRectTween: (begin, end) => RectTween(begin: begin, end: end),
        tag: message.text.runes,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
          child: Column(
            crossAxisAlignment: message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              if (message.isGif != null && message.isGif == true)
                GifWidget(message: message)
              else
                Bubble(
                  message: message,
                ),
            ],
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

  final Message message;

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
          mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text.rich(
                TextSpan(
                  text: rtlFormat(message.text),
                  children: const [],
                ),
                softWrap: true,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: settings.chatFontSize,
                  height: 1.05,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 10),
              child: TimeWidget(
                time: format(message.time),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String format(Timestamp time) {
  return DateFormat('hh:mm a').format(time.toDate());
}

String rtlFormat(String text) {
  if (intl.Bidi.startsWithRtl(text)) {
    return intl.Bidi.enforceRtlInText(text);
  }
  return text;
}

class TimeWidget extends StatelessWidget {
  final String time;

  const TimeWidget({required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
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
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
  bottomLeft: Radius.circular(20),
);

const otherBorder = BorderRadius.only(
  topRight: Radius.circular(20),
  topLeft: Radius.circular(20),
  bottomRight: Radius.circular(20),
);
