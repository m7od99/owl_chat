import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:owl_chat/data/models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          //  if (!message.isMe) TimeWidget(time: '1:30'),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment: message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Material(
                color: Theme.of(context).primaryColor,
                elevation: 0.5,
                borderRadius: message.isMe
                    ? BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      )
                    : BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        "${message.text}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 10),
                      TimeWidget(
                        time: format(message.time),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 6),
          //  if (message.isMe) TimeWidget(time: format(message.time)),
        ],
      ),
    );
  }
}

String format(Timestamp time) {
  return DateFormat('hh:mm a').format(time.toDate());
}

class TimeWidget extends StatelessWidget {
  final String time;

  const TimeWidget({Key? key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
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
