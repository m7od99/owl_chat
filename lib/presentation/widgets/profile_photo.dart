// ignore_for_file: unnecessary_null_comparison, prefer_final_locals

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/auth/user.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart' as p;
import 'package:provider/provider.dart';

class ProfilePhoto extends StatelessWidget {
  final double size;
  const ProfilePhoto({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p.UserState user = Provider.of<p.UserState>(context);

    if (user.photoUri != null) {
      return CachedNetworkImage(
        imageUrl: user.photoUri!,
        imageBuilder: (context, image) => CircleAvatar(
          backgroundImage: image,
          radius: size,
        ),
        placeholder: (context, o) => CircleAvatar(
          radius: size,
          backgroundImage: const AssetImage('assets/images/user.png'),
        ),
      );
    }
    return CircleAvatar(
      radius: size,
      backgroundImage: const AssetImage('assets/images/user.png'),
    );
  }
}

class ChatProfilePhoto extends StatefulWidget {
  const ChatProfilePhoto({
    Key? key,
    required this.size,
    required this.id,
  }) : super(key: key);

  final double size;
  final String id;

  @override
  State<ChatProfilePhoto> createState() => _ChatProfilePhotoState();
}

class _ChatProfilePhotoState extends State<ChatProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        late OwlUser? user;

        if (state.user.chatsData.any((e) => e.id == widget.id)) {
          user = state.user.chatsData.firstWhere((e) => e.id == widget.id);
        } else {
          user = null;
        }
        if (user != null && user.photoUri != null) {
          return CachedNetworkImage(
            imageUrl: user.photoUri!,
            imageBuilder: (context, image) => CircleAvatar(
              backgroundImage: image,
              radius: widget.size,
            ),
            placeholder: (context, o) => CircleAvatar(
              radius: widget.size,
            ),
          );
        }
        return CircleAvatar(
          backgroundImage: const AssetImage('assets/images/user.png'),
          radius: widget.size,
        );
      },
    );
  }
}

class ChatDetailPhoto extends StatelessWidget {
  const ChatDetailPhoto(
      {Key? key, required this.id, required this.hight, required this.width})
      : super(key: key);

  final double hight;
  final double width;

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        late OwlUser? user = null;

        if (state.user.chatsData.any((e) => e.id == id)) {
          user = state.user.chatsData.firstWhere((e) => e.id == id);
        }

        if (user != null && user.photoUri != null) {
          return CachedNetworkImage(
            imageUrl: user.photoUri!,
            placeholder: (context, o) => CircleAvatar(
              radius: hight,
            ),
            width: width,
            height: hight,
          );
        }
        return Container(
          height: hight,
          width: width,
          color: Colors.white,
        );
      },
    );
  }
}

class ChatPhoto extends StatelessWidget {
  const ChatPhoto({
    Key? key,
    required this.userId,
    required this.height,
    required this.width,
    this.circle = false,
  }) : super(key: key);

  final String userId;

  final double height;
  final double width;

  final bool? circle;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<OwlUser>(
      stream: UserControl().getUserChanges(userId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = snapshot.data!;

          if (user.photoUri != null) {
            return CachedNetworkImage(
              imageUrl: user.photoUri!,
            );
          }
        }

        return Container(
          height: height,
          width: width,
        );
      },
    );
  }
}
