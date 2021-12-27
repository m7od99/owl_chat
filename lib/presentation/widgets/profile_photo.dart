// ignore_for_file: unnecessary_null_comparison, prefer_final_locals

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class ChatProfilePhoto extends StatelessWidget {
  final double size;
  final String id;
  const ChatProfilePhoto({
    Key? key,
    required this.size,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        late OwlUser? user;

        if (state.user.chatsData.any((e) => e.id == id)) {
          user = state.user.chatsData.firstWhere((e) => e.id == id);
        } else {
          user = null;
        }

        if (user != null) {
          if (user.photoUri != null) {
            return CachedNetworkImage(
              imageUrl: state.user.chatsData.where((e) => e.id == id).first.photoUri!,
              imageBuilder: (context, image) => CircleAvatar(
                backgroundImage: image,
                radius: size,
              ),
              placeholder: (context, o) => CircleAvatar(
                radius: size,
              ),
            );
          }
        }
        return CircleAvatar(
          backgroundImage: const AssetImage('assets/images/user.png'),
          radius: size,
        );
      },
    );
  }
}
