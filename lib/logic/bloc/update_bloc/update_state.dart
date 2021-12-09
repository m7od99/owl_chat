part of 'update_bloc.dart';

class UpdateState extends Equatable {
  const UpdateState({
    this.update =
        const Update(currentVersions: '0.0.1', newVersions: '0.0.1', uri: '1212'),
    this.isNewUpdate = false,
    this.isAccepted = false,
  });

  final bool isNewUpdate;
  final bool isAccepted;
  final Update update;

  @override
  List<Object> get props => [isNewUpdate, isAccepted, update];

  UpdateState copyWith({
    bool? isNewUpdate,
    bool? isAccepted,
    Update? update,
  }) {
    return UpdateState(
      isNewUpdate: isNewUpdate ?? this.isNewUpdate,
      isAccepted: isAccepted ?? this.isAccepted,
      update: update ?? this.update,
    );
  }
}
// ignore: use_late_for_private_fields_and_variables
