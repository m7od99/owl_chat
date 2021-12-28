part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.updateUserName({
    required String userName,
  }) = UpdateUserName;

  const factory UserEvent.updateEmail({required String email}) = UpdateEmail;

  const factory UserEvent.updateId({required String id}) = UpdateId;

  const factory UserEvent.updateOnChat({required String chatId}) = UpdateOnChat;

  const factory UserEvent.updateUserSettings({required UserProfileSettings settings}) =
      UpdateUserSettings;

  const factory UserEvent.updateNotificationsSettings({
    required NotificationsSetting notificationsSetting,
  }) = UpdateNotificationsSettings;

  const factory UserEvent.loadUser() = LoadUser;

  const factory UserEvent.changeUserStatus() = ChangeUserStatus;

  const factory UserEvent.updateUser() = UpdateUser;

  const factory UserEvent.updatePhotoUri({required String uri}) = UpdatePhotoUri;

  const factory UserEvent.updateToken() = UpdateToken;

  const factory UserEvent.saveUserInServerDatabase() = SaveUserInServerDatabase;

  const factory UserEvent.ignoreNotificationFromChat({
    required String id,
  }) = IgnoreNotificationFromChat;

  const factory UserEvent.changeTheme({
    required bool isDarkTheme,
  }) = ChangeTheme;

  const factory UserEvent.toggleAllowNotification() = ToggleAllowNotification;

  const factory UserEvent.toggleSoundNotification() = ToggleSoundNotification;

  const factory UserEvent.toggleDisplayNotificationOnOpenApp() =
      ToggleDisplayNotificationOnOpenApp;

  const factory UserEvent.addNewChatData({required OwlUser user}) = AddNewChatData;

  const factory UserEvent.getChatData({required String userId}) = GetChatData;

  const factory UserEvent.getChatsData() = GetChatsData;
}
