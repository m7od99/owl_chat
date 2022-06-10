import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_manger_event.dart';
part 'app_manger_state.dart';
part 'app_manger_bloc.freezed.dart';

class AppMangerBloc extends Bloc<AppMangerEvent, AppMangerState> {
  AppMangerBloc() : super(const AppMangerState(internetConnect: true)) {
    on<AppMangerEvent>((event, emit) async {
      await event.map(
        onConnectivityChanged: (OnConnectivityChanged value) async {
          await emit.forEach<ConnectivityResult>(
            Connectivity().onConnectivityChanged,
            onData: (data) {
              if (data == ConnectivityResult.none) {
                return state.copyWith(internetConnect: false);
              } else {
                return state.copyWith(internetConnect: true);
              }
            },
          );
        },
      );
    });
  }
}
