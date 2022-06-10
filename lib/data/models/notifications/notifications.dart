import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed

/// The notification format that used in push Notification.
///
/// [Data] and [to] are must to be not null.
///
class NotificationsModel with _$NotificationsModel {
  factory NotificationsModel({
    String? priority,
    required Data data,

    /// token
    required String to,
    @JsonKey(name: 'mutable_content') bool? mutableContent,
    @JsonKey(name: 'content_available') bool? contentAvailable,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsModelFromJson(json);
}
