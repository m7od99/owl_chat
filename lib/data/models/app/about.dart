// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
class About with _$About {
  const factory About({
    required String version,
    required List<String> changeLog,
  }) = _About;

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
}

class AboutData {
  static const about = About(
    version: '0.0.2',
    changeLog: [
      'Fix push notification issues',
      'Fix emojis size and taps',
      'Fix Search page issues',
      'Fix gifs issus',
      'Improve navigation and fix known issues',
      'Adding About page , checking for new update',
      'Genera fixes',
    ],
  );

  static const about2 = About(
    version: '0.0.3',
    changeLog: [
      'Fix Text Alignment On Text Field',
      'Fix Text Alignment On Message Bubble',
    ],
  );

  static const about3 = About(
    version: '0.0.4',
    changeLog: [
      'Fix registration page behavior',
      'Fix registration /login page validator issues',
    ],
  );

  static const about4 = About(
    version: '0.0.5',
    changeLog: [
      'Fix notification bugs',
      'Saving data Locally',
      'Now you can edits your message',
      'improve UI',
      'Fix loading the photos',
    ],
  );

  static const about5 = About(
    version: '0.0.6',
    changeLog: [
      'Fix freezing bug',
      'Ordering messages by the time when message arrive server',
    ],
  );

  static const about6 = About(
    version: '0.0.7',
    changeLog: [
      'Fix Notifications that send when user in chat',
      'General Fixes',
    ],
  );
}
