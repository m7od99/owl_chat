import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:owl_chat/data/data_controller/update_control.dart';
import 'package:owl_chat/data/models/app/update.dart';
import 'package:owl_chat/update/update_manger.dart';
import 'package:package_info/package_info.dart';
import 'package:version/version.dart';

part 'update_event.dart';
part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  UpdateBloc() : super(const UpdateState()) {
    on<NewUpdateEvent>(_onNewUpdateEvent);

    on<AcceptUpdateEvent>((event, emit) async {
      final uri = state.update.uri;
      UpdateManger().upgrade(uri);
    });

    on<CancelUpdateEvent>((event, emit) async {
      return;
    });

    on<LoadUpdateData>((event, emit) async {
      return emit(
        state.copyWith(
          update: Update(
            uri: event.update.uri,
            currentVersions: event.update.currentVersions,
            newVersions: event.update.newVersions,
          ),
        ),
      );
    });
  }

  // ignore: cancel_subscriptions
  StreamSubscription? _streamSubscription;

  // Future<bool> checkFroNewUpdate() async {
  //   final control = UpdateControl();

  //   final update = await control.getUpdateStatus();

  //   final runVersion = await PackageInfo.fromPlatform();

  //   final runningVersion = Version.parse(runVersion.version);
  //   final latestVersion = Version.parse(update!.newVersions);

  //   if (latestVersion > runningVersion) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  Future _onNewUpdateEvent(NewUpdateEvent event, Emitter emit) async {
    final control = UpdateControl();

    _streamSubscription = control.getUpdateData().listen((update) {
      add(LoadUpdateData(update: update));
    });

    final runVersion = await PackageInfo.fromPlatform();

    final runningVersion = Version.parse(runVersion.version);
    final latestVersion = Version.parse(state.update.newVersions);

    if (latestVersion > runningVersion) {
      return emit(state.copyWith(isNewUpdate: true));
    } else {
      return emit(state.copyWith(isNewUpdate: false));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription!.cancel();
    return super.close();
  }
}
