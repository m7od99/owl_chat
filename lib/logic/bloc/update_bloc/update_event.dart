part of 'update_bloc.dart';

abstract class UpdateEvent extends Equatable {
  const UpdateEvent();

  @override
  List<Object> get props => [];
}

class NewUpdateEvent extends UpdateEvent {}

class AcceptUpdateEvent extends UpdateEvent {}

class CancelUpdateEvent extends UpdateEvent {}

class LoadUpdateData extends UpdateEvent {
  final Update update;

  const LoadUpdateData({
    required this.update,
  });

  LoadUpdateData copyWith({
    Update? update,
  }) {
    return LoadUpdateData(
      update: update ?? this.update,
    );
  }
}
