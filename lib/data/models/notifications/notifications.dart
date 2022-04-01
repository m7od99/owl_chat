import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
class NotificationsModel with _$NotificationsModel {
  factory NotificationsModel({
    String? priority,
    Data? data,
    String? to,
    @JsonKey(name: 'mutable_content') bool? mutableContent,
    @JsonKey(name: 'content_available') bool? contentAvailable,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsModelFromJson(json);
}
