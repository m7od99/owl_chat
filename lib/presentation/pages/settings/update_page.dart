import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:owl_chat/logic/bloc/update_bloc/update_bloc.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({Key? key}) : super(key: key);

  static String id = 'update';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('....'),
            const Spacer(),
            BlocBuilder<UpdateBloc, UpdateState>(
              builder: (context, state) {
                context.read<UpdateBloc>().add(NewUpdateEvent());

                return newUpdate(context, state);
              },
            ),
            // StreamBuilder<About?>(
            //   stream: UpdateControl().getUpdateInfoFromDataBase(),
            //   builder: (context, snap) {
            //     if (snap.hasData) {
            //       return Text(snap.data!.changeLog.first);
            //     }
            //     return Container();
            //   },
            // ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget newUpdate(BuildContext context, UpdateState state) {
    if (state.isNewUpdate) {
      return Column(
        children: [
          Text(
            'There is a new update version ${state.update.newVersions}',
            style: const TextStyle(fontSize: 18),
          ),
          const Text('more information ...'),
          const SizedBox(height: 30),
          ListTile(
            onTap: () {
              context.read<UpdateBloc>().add(AcceptUpdateEvent());

              showDialog(
                  builder: (BuildContext context) => LoadingFlipping.circle(),
                  context: context);
            },
            title: const Center(child: Text('Update Now')),
          ),
        ],
      );
    }
    return const Text(
      'App is up to date',
      style: TextStyle(fontSize: 18),
    );
  }
}
