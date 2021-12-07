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
}
