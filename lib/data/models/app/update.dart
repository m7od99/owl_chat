import 'dart:convert';

class Update {
  final String currentVersions;
  final String newVersions;
  final String uri;

  const Update({
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
      currentVersions: map['currentVersions'] as String,
      newVersions: map['newVersions'] as String,
      uri: map['uri'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Update.fromJson(String source) =>
      Update.fromMap(json.decode(source) as Map<String, dynamic>);
}
