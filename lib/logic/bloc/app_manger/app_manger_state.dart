part of 'app_manger_bloc.dart';

class AppMangerState extends Equatable {
  final bool internetConnect;
  const AppMangerState({
    required this.internetConnect,
  });

  AppMangerState copyWith({
    bool? internetConnect,
  }) {
    return AppMangerState(
      internetConnect: internetConnect ?? this.internetConnect,
    );
  }

  @override
  List<Object> get props => [internetConnect];
}
