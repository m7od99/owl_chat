import 'package:freezed_annotation/freezed_annotation.dart';

import 'content.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
	factory Data({
		Content? content,
		String? type,
		String? chat,
	}) = _Data;

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}