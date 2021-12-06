import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/data/data_controller/update_control.dart';
import 'package:owl_chat/data/models/app/update.dart';
import 'package:owl_chat/logic/bloc/bloc/update_bloc.dart';

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
            BlocProvider(
              create: (_) => UpdateBloc(),
              child: BlocBuilder<UpdateBloc, UpdateState>(
                builder: (context, state) {
                  context.read<UpdateBloc>().add(NewUpdateEvent());

                  return Text(
                    '${state.isNewUpdate}',
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
            ),
            StreamBuilder<Update?>(
              stream: UpdateControl().getUpdateData(),
              builder: (context, snap) {
                if (snap.hasData) {
                  return Text(snap.data!.newVersions);
                }
                return Container();
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
