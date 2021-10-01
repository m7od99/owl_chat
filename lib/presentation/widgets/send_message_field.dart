import 'package:auto_direction/auto_direction.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/logic/event_handler/send_message_state.dart';
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
  bool isRTL = false;
  Category categoryIndex = Category.RECENT;

  final _focusNode = FocusNode();
  bool emojiShowing = false;

  void _onEmojiSelected(Emoji emoji) {
    _controller
      ..text += emoji.emoji
      ..selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
  }

  void _onBackspacePressed() {
    _controller
      ..text = _controller.text.characters.skipLast(1).toString()
      ..selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sendMessage = Provider.of<SendMessageState>(context);

    final Chat chat = widget.chat;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              GifsButton(chat: chat),
              Expanded(
                child: Row(
                  children: [
                    AutoDirection(
                      text: _controller.text,
                      onDirectionChange: (isRTL) {},
                      child: Expanded(
                        child: CupertinoTextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          placeholder: 'Message',
                          controller: _controller,
                          focusNode: _focusNode,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          suffix: IconButton(
                            icon: Icon(
                              Icons.sentiment_satisfied_rounded,
                            ),
                            onPressed: () {
                              setState(() {
                                emojiShowing = !emojiShowing;
                                _focusNode.unfocus();
                              });
                            },
                          ),
                          minLines: 1,
                          onTap: () {
                            setState(() {
                              if (emojiShowing) emojiShowing = !emojiShowing;
                            });
                          },
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          textAlign: TextAlign.justify,
                          showCursor: true,
                          style: GoogleFonts.actor(
                            height: 1.05,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () async {
                  sendMessage.updateMessage(_controller.text);
                  sendMessage.sendTextMessage(chatId: chat.id, receiverId: chat.other!.id);
                  sendMessage.updateChatState(chat);
                  _controller.clear();
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
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: SizedBox(
                height: 250,
                child: EmojiPicker(
                  onEmojiSelected: (Category category, Emoji emoji) {
                    _onEmojiSelected(emoji);
                  },
                  onBackspacePressed: _onBackspacePressed,
                  config: Config(
                    columns: 9,
                    emojiSizeMax: 25,
                    initCategory: categoryIndex,
                    showRecentsTab: true,
                    recentsLimit: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
