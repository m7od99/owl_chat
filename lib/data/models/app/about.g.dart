// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_About _$$_AboutFromJson(Map<String, dynamic> json) => _$_About(
      version: json['version'] as String,
      changeLog:
          (json['changeLog'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AboutToJson(_$_About instance) => <String, dynamic>{
      'version': instance.version,
      'changeLog': instance.changeLog,
    };
