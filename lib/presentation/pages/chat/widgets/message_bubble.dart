import 'package:any_link_preview/any_link_preview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/presentation/widgets/multi_language_format.dart';
import 'package:linkify/linkify.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

String format(DateTime time) {
  return DateFormat('hh:mm a').format(time);
}

const radius = Radius.circular(20);

const BorderRadius meBorder = BorderRadius.only(
  topLeft: radius,
  topRight: radius,
  bottomLeft: radius,
//  bottomRight: Radius.circular(-15),
);

const BorderRadius otherBorder = BorderRadius.only(
  topRight: radius,
  topLeft: radius,

  bottomRight: radius,
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
              progressIndicatorBuilder: (context, url, down) =>
                  const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: SendingInfo(
                message: message,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const myColor = Color(0xff575366);
const chatWithColor = Color(0xFF32292F);

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
    return Container(
      decoration: BoxDecoration(),
      child: GestureDetector(
        onDoubleTap: onDoubleTap,
        child: Hero(
          transitionOnUserGestures: true,
          tag: index,
          child: Padding(
            padding: EdgeInsets.only(
              left: message.isMe ? 50 : 0,
              right: message.isMe ? 0 : 50,
              top: 3,
              bottom: 3,
            ),
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

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: message.isMe ? myColor : chatWithColor,
        borderRadius: message.isMe ? meBorder : otherBorder,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      child: Wrap(
        spacing: 1.5,
        crossAxisAlignment: WrapCrossAlignment.end,
        alignment: message.isMe ? WrapAlignment.end : WrapAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AutoDirectionality(
                  text: message.text,
                  child: Flexible(
                    child: LinkMessage(
                      messageModel: message,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SendingInfo(message: message),
        ],
      ),
    );
  }
}

class SendingInfo extends StatelessWidget {
  const SendingInfo({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.64,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            format(message.time),
            style: GoogleFonts.notoSans(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.01,
              color: Colors.white,
            ),
          ),
          //  const SizedBox(width: 2),
          if (message.isEdited != null && message.isEdited == true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: const Text(
                'edited',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          const SizedBox(width: 2),
          if (message.isMe && message.isSend != null && message.isSend == false)
            LoadingAnimationWidget.discreteCircle(
              size: 15,
              color: Colors.white,
              secondRingColor: Colors.black,
            ),
          if (message.isMe &&
              message.isSend != null &&
              message.isSend == true &&
              message.isSeen == null)
            const Icon(
              Icons.done,
              size: 15,
              color: Colors.white,
            ),
          if (message.isMe &&
              message.isSeen != null &&
              message.isSeen == true &&
              message.isSend == true)
            const Icon(
              LineAwesomeIcons.double_check,
              color: Colors.white,
              size: 15,
            ),
        ],
      ),
    );
  }
}

class LinkMessage extends StatelessWidget {
  const LinkMessage({Key? key, required this.messageModel}) : super(key: key);

  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    final elements = linkify(messageModel.text);

    return SelectableText.rich(TextSpan(
      children: elements.map<InlineSpan>((element) {
        if (element is LinkableElement) {
          return WidgetSpan(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                element.text,
                onTap: () async {
                  if (await canLaunchUrlString(element.url)) {
                    await launchUrlString(element.url);
                  }
                },
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 3),
              AnyLinkPreview(
                displayDirection: UIDirection.uiDirectionHorizontal,
                link: element.url,
              ),
            ],
          ));
        }
        return TextSpan(
          text: element.text.trim(),
          style: GoogleFonts.almarai(
            fontSize: 18,
            height: 1.10,
            color: Colors.white,
          ),
        );
      }).toList(),
    ));
  }
}
