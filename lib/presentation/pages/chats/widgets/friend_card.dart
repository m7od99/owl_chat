import 'package:flutter/material.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart';
import 'package:owl_chat/presentation/widgets/profile_photo.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chats/chat.dart';
import '../../../../helper/helper.dart';
import '../../../../logic/event_handler/user_state.dart' as p;
import '../../../theme/constant.dart';

class FriendCard extends StatefulWidget {
  final Chat chat;
  final VoidCallback onTap;

  const FriendCard({required this.onTap, required this.chat});

  @override
  State<FriendCard> createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
  String name(String myId) {
    if (widget.chat.me!.id == myId) return widget.chat.other!.userName;
    return widget.chat.me!.userName;
  }

  String otherId(String myId) {
    if (widget.chat.me!.id == myId) return widget.chat.other!.id;
    return widget.chat.me!.id;
  }

  @override
  void initState() {
    context.read<UserBloc>().add(GetChatData(userId: p.UserState().otherId(widget.chat)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<p.UserState>(context);

    return SizedBox(
      height: 55,
      child: InkWell(
        onTap: widget.onTap,
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                ChatProfilePhoto(
                  size: 28,
                  id: otherId(user.userId),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          name(user.userId),
                          style: kFriendCardText,
                        ),
                        Opacity(
                          opacity: 0.64,
                          child: Text(
                            widget.chat.lastMessage ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.64,
                  child: Text(Helper.format(widget.chat.time!)),
                ),
              ],
            ),
            //  CounterNewMessages(counter: 1),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CounterNewMessages extends StatelessWidget {
  int counter;
  CounterNewMessages({
    required this.counter,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1,
      right: 1,
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.indigo[400],
          shape: BoxShape.circle,
        ),
        child: Text(
          '$counter',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
