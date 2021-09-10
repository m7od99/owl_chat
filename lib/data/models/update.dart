import 'dart:convert';

class Update {
  String currentVersions;
  String newVersions;
  String uri;

  Update({
    required this.currentVersions,
    required this.newVersions,
    required this.uri,
  });

  Update copyWith({
    String? currentVersions,
    String? newVersions,
    String? uri,
  }) {
    return Update(
      currentVersions: currentVersions ?? this.currentVersions,
      newVersions: newVersions ?? this.newVersions,
      uri: uri ?? this.uri,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'currentVersions': currentVersions,
      'newVersions': newVersions,
      'uri': uri,
    };
  }

  factory Update.fromMap(Map<String, dynamic> map) {
    return Update(
      currentVersions: map['currentVersions'],
      newVersions: map['newVersions'],
      uri: map['uri'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Update.fromJson(String source) => Update.fromMap(json.decode(source));
}
