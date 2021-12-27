import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animations/loading_animations.dart';

import '../../../logic/bloc/app_manger/app_manger_bloc.dart';
import '../search/search_page.dart';
import 'slider.dart';
import 'widgets/chats_stream.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  static String id = "/ChatsId";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppMangerBloc, AppMangerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).splashColor,
            automaticallyImplyLeading: false,
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (state.internetConnect == false) const WaitingForNetwork(),
                if (state.internetConnect == true) const Text('Chats'),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: UserSearchPage(),
                    );
                  },
                )
              ],
            ),
          ),
          body: const ChatsStream(),
          drawer: const SliderPage(),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(20),
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[400],
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

class WaitingForNetwork extends StatelessWidget {
  const WaitingForNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('waiting for network'),
        const SizedBox(width: 13),
        LoadingBouncingLine.circle(
          backgroundColor: Colors.white,
          size: 30,
        ),
      ],
    );
  }
}
