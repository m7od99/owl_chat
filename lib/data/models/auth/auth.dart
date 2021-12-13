// ignore_for_file: depend_on_referenced_packages

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail(
    T failedValue,
  ) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword(
    T failedValue,
  ) = ShortPassword<T>;
}

class Email {
  final Either<ValueFailure<String>, String> value;

  const Email._(this.value);
}
