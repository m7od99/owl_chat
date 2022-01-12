import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/bloc/send_message_form/send_message_form_bloc.dart';
import 'package:provider/provider.dart';

class EditMessageCard extends StatelessWidget {
  const EditMessageCard({
    Key? key,
    required this.controller,
    required this.messageBloc,
  }) : super(key: key);

  final TextEditingController controller;
  final MessageBloc messageBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendMessageFormBloc, SendMessageFormState>(
      builder: (context, state) {
        final message = state.message.text;
        return Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Row(
              children: [
                const Icon(Icons.edit),
                const SizedBox(width: 30),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Edit Message',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (message.length >= 40)
                      Flexible(
                        child: Text(
                          message.substring(0, 38),
                          softWrap: true,
                          maxLines: 1,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    if (message.length < 40) Text(message),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
                    Provider.of<SendMessageFormBloc>(context, listen: false)
                        .add(const SendMessageFormEvent.cancelEdit());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
