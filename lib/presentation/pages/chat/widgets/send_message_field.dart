import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/bloc/send_message_form/send_message_form_bloc.dart';
import 'package:owl_chat/presentation/widgets/multi_language_format.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/gifs_button.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SendMessageField extends StatefulWidget {
  const SendMessageField({
    Key? key,
    required this.chat,
    required this.controller,
    required this.itemScrollController,
  }) : super(key: key);

  final Chat chat;
  final TextEditingController controller;
  final ItemScrollController itemScrollController;

  @override
  _SendMessageFieldState createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField>
    with AutomaticKeepAliveClientMixin {
  Category categoryIndex = Category.RECENT;

  final _focusNode = FocusNode();
  bool emojiShowing = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final _selectControl = MaterialTextSelectionControls();

    final Chat chat = widget.chat;

    final InputDecoration _inputDecoration = InputDecoration(
      hintText: 'type message ...',

      //    filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
      suffixIcon: IconButton(
        iconSize: 25,
        color:
            Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
        icon: Icon(FontAwesomeIcons.faceSmile),
        onPressed: () {
          setState(() {
            emojiShowing = !emojiShowing;
            _focusNode.unfocus();
          });
        },
      ),
      //    fillColor: Colors.black38,
      isDense: true,
    );

    return Container(
      padding: const EdgeInsets.only(bottom: 4),
      //  margin: EdgeInsets.all(4),
      child: Column(
        //    mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Divider(
            height: 8,
            thickness: 1,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GifsButton(
                chat: chat,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AutoDirectionality(
                        text: widget.controller.text,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          selectionControls: _selectControl,
                          minLines: 1,
                          maxLines: 10,
                          enabled: true,
                          controller: widget.controller,
                          focusNode: _focusNode,
                          decoration: _inputDecoration,
                          onChanged: (str) {
                            context.read<SendMessageFormBloc>().add(
                                  SendMessageFormEvent.updateText(
                                    text: widget.controller.text,
                                  ),
                                );

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
                            textBaseline: TextBaseline.alphabetic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              IconButton(
                onPressed: () async {
                  context.read<SendMessageFormBloc>().add(
                        SendMessageFormEvent.updateText(
                          text: widget.controller.text,
                        ),
                      );

                  context
                      .read<SendMessageFormBloc>()
                      .add(const SendMessageFormEvent.sendMessage());

                  widget.controller.clear();

                  widget.itemScrollController.scrollTo(
                    index: 0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInBack,
                  );
                },
                iconSize: 25,
                //  color: Theme.of(context).primaryColor,
                icon: const Icon(
                  CupertinoIcons.arrow_up_circle,
                  size: 32,
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
    );
  }

  @override
  bool get wantKeepAlive => true;
}
