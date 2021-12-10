import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sendMessage = Provider.of<SendMessageState>(context);
    final user = Provider.of<UserState>(context);

    final _selectControl = MaterialTextSelectionControls();

    final Chat chat = widget.chat;

    final InputDecoration _inputDecoration = InputDecoration(
      hintText: 'type message ...',
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      fillColor: Colors.black38,
      isDense: true,
      suffix: GestureDetector(
        child: const Icon(
          Icons.sentiment_satisfied_rounded,
        ),
        onTap: () {
          setState(() {
            emojiShowing = !emojiShowing;
            _focusNode.unfocus();
          });
        },
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        //    mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GifsButton(chat: chat),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AutoDirectionality(
                        text: _controller.text,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          showCursor: true,
                          cursorHeight: 12,
                          selectionControls: _selectControl,
                          minLines: 1,
                          maxLines: 10,
                          enabled: true,
                          controller: _controller,
                          focusNode: _focusNode,
                          decoration: _inputDecoration,
                          onChanged: (str) {
                            sendMessage.updateMessage(str);
                          },
                          keyboardType: TextInputType.multiline,
                          toolbarOptions: const ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true,
                          ),
                          textCapitalization: TextCapitalization.words,
                          onTap: () {
                            setState(() {
                              if (emojiShowing) emojiShowing = !emojiShowing;
                            });
                          },
                          style: GoogleFonts.actor(
                            height: 1.05,
                            fontSize: 18,
                            color: Colors.white,
                            textBaseline: TextBaseline.alphabetic,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
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
          ),
        ],
      ),
    );
  }
}
