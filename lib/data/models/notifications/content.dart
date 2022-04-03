import 'package:freezed_annotation/freezed_annotation.dart';

import 'payload.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
class Content with _$Content {
  factory Content({
    required int id,
    String? title,
    Payload? payload,
    String? body,
    String? largeIcon,
    String? summary,
    required String channelKey,
    String? category,
    bool? autoDismissible,
    bool? roundedLargeIcon,
    String? notificationLayout,
    bool? showWhen,
    String? privacy,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
}
