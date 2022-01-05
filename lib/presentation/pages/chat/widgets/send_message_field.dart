import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/controller/multi_language_format.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/gifs_button.dart';
import 'package:provider/src/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SendMessageField extends StatefulWidget {
  const SendMessageField({
    Key? key,
    required this.chat,
    required this.controller,
    required this.itemScrollController,
    required this.messageBloc,
  }) : super(key: key);

  final Chat chat;
  final TextEditingController controller;
  final ItemScrollController itemScrollController;
  final MessageBloc messageBloc;

  @override
  _SendMessageFieldState createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  bool isRTL = false;
  Category categoryIndex = Category.RECENT;

  final _focusNode = FocusNode();
  bool emojiShowing = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

    return Material(
      child: Padding(
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
                          text: widget.controller.text,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            showCursor: true,
                            cursorHeight: 12,
                            selectionControls: _selectControl,
                            minLines: 1,
                            maxLines: 10,
                            enabled: true,
                            controller: widget.controller,
                            focusNode: _focusNode,
                            decoration: _inputDecoration,
                            onChanged: (str) {
                              context
                                  .read<MessageBloc>()
                                  .add(WriteMessage(text: widget.controller.text));

                              //    sendMessage.updateMessage(str);
                            },
                            keyboardType: TextInputType.multiline,
                            toolbarOptions: const ToolbarOptions(
                              copy: true,
                              cut: true,
                              selectAll: true,
                              paste: true,
                            ),
                            textCapitalization: TextCapitalization.sentences,
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
                    context.read<MessageBloc>().add(WriteMessage(text: widget.controller.text));

                    context.read<MessageBloc>().add(SendMessage(chat: chat));

                    widget.controller.clear();

                    // widget.itemScrollController.scrollTo(
                    //   index: 0,
                    //   duration: const Duration(seconds: 1),
                    //   curve: Curves.easeInBack,
                    // );
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
                      widget.controller.text += emoji.emoji;
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
      ),
    );
  }
}
