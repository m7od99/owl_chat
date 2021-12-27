part of 'app_manger_bloc.dart';

@freezed
abstract class AppMangerEvent with _$AppMangerEvent {
  const factory AppMangerEvent.onConnectivityChanged() = OnConnectivityChanged;
}
