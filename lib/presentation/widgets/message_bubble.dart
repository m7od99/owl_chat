import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment:
            message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isMe) TimeWidget(time: '1:30'),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment: message.isMe
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: <Widget>[
              Material(
                color: message.isMe
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                elevation: 15,
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    message.text,
                    style: TextStyle(
                      color: message.isMe ? Colors.white : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 6),
          if (message.isMe) TimeWidget(time: '1:30'),
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  final String time;

  const TimeWidget({Key? key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Text(
        time,
        style: TextStyle(
          color: Theme.of(context).iconTheme.color,
          fontSize: 13,
        ),
      ),
    );
  }
}

// Text(
// sender,
// style: TextStyle(
// fontSize: 12,
// color: Colors.black45,
// ),
// ),
