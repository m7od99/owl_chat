import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/controller/fcm_notifications.dart';
import 'package:owl_chat/logic/controller/multi_language_format.dart';
import 'package:owl_chat/logic/event_handler/send_message_state.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/gifs_button.dart';
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

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sendMessage = Provider.of<SendMessageState>(context);
    final user = Provider.of<UserState>(context);

    final Chat chat = widget.chat;

    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          textBaseline: TextBaseline.alphabetic,
          children: [
            GifsButton(chat: chat),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: AutoDirectionality(
                      text: _controller.text,
                      child: CupertinoTextField(
                        textAlignVertical: TextAlignVertical.center,
                        showCursor: true,
                        cursorHeight: 2,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        // inputFormatters: [
                        //      MultiLanguageFormat(),
                        // ],
                        minLines: 1,
                        maxLines: 10,
                        placeholder: 'Message',
                        controller: _controller,
                        focusNode: _focusNode,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        onChanged: (str) {
                          sendMessage.updateMessage(str);
                        },
                        keyboardType: TextInputType.multiline,

                        textCapitalization: TextCapitalization.words,
                        suffix: IconButton(
                          icon: const Icon(
                            Icons.sentiment_satisfied_rounded,
                          ),
                          onPressed: () {
                            setState(() {
                              emojiShowing = !emojiShowing;
                              _focusNode.unfocus();
                            });
                          },
                        ),
                        onTap: () {
                          setState(() {
                            if (emojiShowing) emojiShowing = !emojiShowing;
                          });
                        },
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
                sendMessage.sendTextMessage(
                  chatId: chat.id,
                  receiverId: chat.other!.id,
                );
                sendMessage.updateChatState(chat);
                FCMNotifications.instance.send(
                  body: _controller.text,
                  title: user.userName,
                  toUserId: user.otherId(chat),
                  chatId: chat.id,
                );
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
          child: SizedBox(
            height: 250,
            child: EmojiPicker(
              onEmojiSelected: (Category category, Emoji emoji) {
                _controller.text += emoji.emoji;
              },
              config: const Config(
                emojiSizeMax: 25,
                columns: 9,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
