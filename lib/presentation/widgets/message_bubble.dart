import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart' as intl;
import 'package:owl_chat/data/models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment:
              message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Material(
              color: Colors.indigo[400],
              elevation: 0.5,
              borderRadius: message.isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )
                  : BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  textBaseline: TextBaseline.ideographic,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: message.isMe
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: SelectableText(
                        rtlFormat(message.text),
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 1.05,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    TimeWidget(
                      time: format(message.time),
                    ),
                  ],
                ),
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

  const TimeWidget({Key? key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text(
        time,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
