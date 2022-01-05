import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animations/loading_animations.dart';
// ignore: depend_on_referenced_packages
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/controller/multi_language_format.dart';

String format(DateTime time) {
  return DateFormat('hh:mm a').format(time);
}

const BorderRadius meBorder = BorderRadius.only(
  topLeft: Radius.circular(15),
  topRight: Radius.circular(15),

  bottomLeft: Radius.circular(15),
  // bottomRight: Radius.circular(25),
);

const BorderRadius otherBorder = BorderRadius.only(
  topRight: Radius.circular(15),
  topLeft: Radius.circular(15),

  bottomRight: Radius.circular(15),
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

class MessageBubbleAnimated extends StatelessWidget {
  const MessageBubbleAnimated({
    Key? key,
    required this.message,
    this.onDoubleTap,
    required this.index,
  }) : super(key: key);

  final MessageModel message;
  final VoidCallback? onDoubleTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Hero(
        transitionOnUserGestures: true,
        tag: index,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
          child: Align(
            alignment: message.isMe ? Alignment.topRight : Alignment.topLeft,
            child: Column(
              children: [
                if (message.isGif != null && message.isGif == true)
                  NewGifWidget(message: message)
                else
                  BubbleAnimated(
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

class BubbleAnimated extends StatelessWidget {
  const BubbleAnimated({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: message.isMe ? Colors.indigo[400] : Colors.deepPurple[700],
            borderRadius: message.isMe ? meBorder : otherBorder,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoDirectionality(
                text: message.text,
                child: Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: message.text.trim(),
                      style: GoogleFonts.almarai(
                        height: 1.15,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (message.isEdited != null && message.isEdited == true)
                const Text(
                  'edited',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(width: 4),
              Text(
                format(message.time),
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              if (message.isMe && message.isSend != null && message.isSend == true)
                const Icon(
                  Icons.done,
                  size: 15,
                ),
              if (message.isMe && message.isSend != null && message.isSend == false)
                LoadingRotating.square(
                  size: 14,
                  backgroundColor: Colors.white,
                  borderColor: Colors.black,
                ),
              if (message.isMe && message.isSeen != null && message.isSeen == true)
                const Icon(
                  Icons.done,
                  size: 15,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
