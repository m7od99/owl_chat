import 'package:auto_direction/auto_direction.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import 'package:owl_chat/presentation/widgets/gifs_button.dart';
import 'package:provider/provider.dart';

class SendMessageField extends StatefulWidget {
  final Chat chat;

  const SendMessageField({Key? key, required this.chat}) : super(key: key);

  @override
  _SendMessageFieldState createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  final TextEditingController _controller = TextEditingController();
  String text = '';
  bool isRTL = false;

  Category categoryIndex = Category.RECENT;

  final _focusNode = FocusNode();
  bool emojiShowing = false;

  void _onEmojiSelected(Emoji emoji) {
    _controller
      ..text += emoji.emoji
      ..selection = TextSelection.fromPosition(TextPosition(offset: _controller.text.length));

    _set();
  }

  void _onBackspacePressed() {
    _controller
      ..text = _controller.text.characters.skipLast(1).toString()
      ..selection = TextSelection.fromPosition(TextPosition(offset: _controller.text.length));

    _set();
  }

  void _set() {
    setState(() {
      text = _controller.text;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);
    final control = Provider.of<MessageControl>(context);
    final Chat chat = widget.chat;

    bool isMe(String messageSender) {
      if (messageSender == user.userId) {
        return true;
      } else {
        return false;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 4,
        vertical: kDefaultPadding / 3,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12,
            color: Colors.grey.withOpacity(0.10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            textBaseline: TextBaseline.alphabetic,
            children: [
              GifsButton(user: user, chat: chat, control: control, widget: widget),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).primaryColor.withOpacity(0.10),
                  ),
                  child: Row(
                    children: [
                      AutoDirection(
                        text: _controller.text,
                        onDirectionChange: (isRTL) {},
                        child: Expanded(
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            controller: _controller,
                            focusNode: _focusNode,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            textAlign: TextAlign.justify,
                            showCursor: true,
                            style: GoogleFonts.actor(
                              height: 1.05,
                              fontSize: 16,
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                            onTap: () {
                              if (emojiShowing) {
                                setState(() {
                                  emojiShowing = !emojiShowing;
                                });
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "Type message",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    final message = Message(
                      sender: user.userId,
                      receiver: chat.other!.id,
                      text: _controller.text,
                      isSend: true,
                      isGif: false,
                      time: Timestamp.now(),
                      isMe: isMe(chat.other!.id),
                    );
                    control.sendMessage(message, chat.id);

                    print(chat.other!.id);
                    print(user.userId);

                    chat.lastMessage = _controller.text;
                    chat.time = Timestamp.now();
                    control.createChat(widget.chat);
                  }
                  setState(() {
                    _controller.clear();
                  });
                },
                iconSize: 25,
                color: Colors.blue,
                icon: const Icon(
                  Icons.send,
                ),
              ),
            ],
          ),
          Offstage(
            offstage: !emojiShowing,
            child: SizedBox(
              height: 250,
              child: EmojiPicker(
                  onEmojiSelected: (Category category, Emoji emoji) {
                    setState(() {
                      categoryIndex = category;
                    });
                    _onEmojiSelected(emoji);
                  },
                  onBackspacePressed: _onBackspacePressed,
                  config: Config(
                      columns: 8,
                      emojiSizeMax: 25,
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      initCategory: categoryIndex,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      progressIndicatorColor: Colors.blue,
                      backspaceColor: Colors.blue,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      noRecentsText: 'No Recent',
                      noRecentsStyle: const TextStyle(fontSize: 20, color: Colors.black26),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL)),
            ),
          ),
        ],
      ),
    );
  }
}
