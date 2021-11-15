import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/message.dart';

class ReplyMessage extends StatelessWidget {
  final Message message;
  final VoidCallback cancelReply;

  const ReplyMessage({
    Key? key,
    required this.message,
    required this.cancelReply,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
