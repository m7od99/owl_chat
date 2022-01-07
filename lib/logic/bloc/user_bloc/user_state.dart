part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required Owl user,
    OwlUser? otherUserInfo,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        user: Owl(
          email: '',
          id: '',
          userName: '',
          userSettings: UserProfileSettings(
            darkTheme: true,
            language: 'none',
            notificationsSetting: NotificationsSetting(
              allowNotifications: true,
              displayNotificationsOnForeground: false,
              ignoredNotificationsChats: [],
              silent: false,
              sound: true,
            ),
          ),
          friends: [],
          chats: [],
          chatsData: <OwlUser>[],
        ),
      );
}
