import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/auth/user.dart';
import 'package:owl_chat/logic/controller/search.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:provider/provider.dart';

class ProfilePhoto extends StatelessWidget {
  final double size;
  const ProfilePhoto({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserState user = Provider.of<UserState>(context);

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
    return FutureBuilder<OwlUser?>(
      future: SearchLogic.getUserById(id),
      builder: (context, snap) {
        if (snap.hasData) {
          if (snap.data!.photoUri != null) {
            return CachedNetworkImage(
              imageUrl: snap.data!.photoUri!,
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
