import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({required this.text, required this.sender, required this.isMe});

  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isMe) TimeWidget(time: '1:30'),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Material(
                color: isMe ? Theme.of(context).primaryColor : Colors.white,
                elevation: 15,
                borderRadius: isMe
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
                    text,
                    style: TextStyle(
                      color: isMe ? Colors.white : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 6),
          if (isMe) TimeWidget(time: '1:30'),
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
