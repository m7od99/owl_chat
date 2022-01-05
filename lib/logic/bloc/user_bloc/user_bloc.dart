// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/data/data_controller/owl_user_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/auth/owl_user.dart';
import 'package:owl_chat/data/models/auth/profile_user_settings.dart';
import 'package:owl_chat/data/models/auth/user.dart';

part 'user_event.dart';
part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends HydratedBloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        ///
        saveUserInServerDatabase: (SaveUserInServerDatabase value) async {
          add(const UpdateUser());
          await _control.saveUser(state.user);
        },

        ///
        loadUser: (LoadUser value) {},
        changeUserStatus: (ChangeUserStatus value) {},
        updateEmail: (UpdateEmail value) {},
        updateId: (UpdateId value) {},
        updateNotificationsSettings: (UpdateNotificationsSettings value) {},
        updateOnChat: (UpdateOnChat value) {},
        updatePhotoUri: (UpdatePhotoUri value) {},
        updateToken: (UpdateToken value) {},

        ///
        updateUser: (UpdateUser value) async {
          emit(
            state.copyWith(
              user: state.user.copyWith(
                email: _user.email,
                id: _user.userId,
                userName: _user.userName,
                token: await _user.getToken(),
                photoUri: _user.userUriPhoto,
              ),
            ),
          );
        },

        ///
        updateUserName: (UpdateUserName value) {},

        ///
        updateUserSettings: (UpdateUserSettings value) {},

        ///
        ignoreNotificationFromChat: (IgnoreNotificationFromChat value) {},

        ///
        changeTheme: (ChangeTheme value) {},

        ///
        toggleAllowNotification: (ToggleAllowNotification value) {
          emit(
            state.copyWith(
              user: state.user.copyWith(
                userSettings: state.user.userSettings.copyWith(
                  notificationsSetting: state.user.userSettings.notificationsSetting.copyWith(
                    allowNotifications:
                        !state.user.userSettings.notificationsSetting.allowNotifications,
                  ),
                ),
              ),
            ),
          );
        },

        ///
        toggleDisplayNotificationOnOpenApp: (ToggleDisplayNotificationOnOpenApp value) {
          emit(
            state.copyWith(
              user: state.user.copyWith(
                userSettings: state.user.userSettings.copyWith(
                  notificationsSetting: state.user.userSettings.notificationsSetting.copyWith(
                    displayNotificationsOnForeground: !state
                        .user.userSettings.notificationsSetting.displayNotificationsOnForeground,
                  ),
                ),
              ),
            ),
          );
        },

        ///
        toggleSoundNotification: (ToggleSoundNotification value) {
          emit(
            state.copyWith(
              user: state.user.copyWith(
                userSettings: state.user.userSettings.copyWith(
                  notificationsSetting: state.user.userSettings.notificationsSetting.copyWith(
                    sound: !state.user.userSettings.notificationsSetting.sound,
                  ),
                ),
              ),
            ),
          );
        },

        ///
        addNewChatData: (AddNewChatData value) {
          if (!state.user.chatsData.any((e) => e.id == value.user.id)) {
            emit(
              state.copyWith(
                user: state.user.copyWith(chatsData: state.user.chatsData..add(value.user)),
              ),
            );
          } else {
            final user = state.user.chatsData.indexWhere((e) => e.id == value.user.id);

            if (state.user.chatsData[user].photoUri != value.user.photoUri) {
              emit(
                state.copyWith(
                  user: state.user.copyWith(
                    chatsData: state.user.chatsData
                      ..removeAt(user)
                      ..add(value.user),
                  ),
                ),
              );
            }
          }
        },

        ///
        getChatData: (GetChatData value) async {
          if (state.user.chatsData.any((e) => e.id == value.userId)) {
            emit(
              state.copyWith(
                otherUserInfo: state.user.chatsData.firstWhere((e) => e.id == value.userId),
              ),
            );
          } else {
            emit(state.copyWith(otherUserInfo: null));
          }
          return state.otherUserInfo;
        },

        ///
        getChatsData: (GetChatsData value) async {
          final users = await _user.getUsersData();
          for (final user in users) {
            add(AddNewChatData(user: user));
          }
        },

        ///
      );
    });
  }
  final OwlUserControl _control = OwlUserControl();
  final _user = UserControl();

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserState(
      user: Owl.fromJson(json),
    );
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return state.user.toJson();
  }
}
