// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumberState {
  int get identifier => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberStateCopyWith<PhoneNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberStateCopyWith<$Res> {
  factory $PhoneNumberStateCopyWith(
          PhoneNumberState value, $Res Function(PhoneNumberState) then) =
      _$PhoneNumberStateCopyWithImpl<$Res, PhoneNumberState>;
  @useResult
  $Res call({int identifier, String phoneNumber, String message, String date});
}

/// @nodoc
class _$PhoneNumberStateCopyWithImpl<$Res, $Val extends PhoneNumberState>
    implements $PhoneNumberStateCopyWith<$Res> {
  _$PhoneNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? phoneNumber = null,
    Object? message = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneNumberStateCopyWith<$Res>
    implements $PhoneNumberStateCopyWith<$Res> {
  factory _$$_PhoneNumberStateCopyWith(
          _$_PhoneNumberState value, $Res Function(_$_PhoneNumberState) then) =
      __$$_PhoneNumberStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int identifier, String phoneNumber, String message, String date});
}

/// @nodoc
class __$$_PhoneNumberStateCopyWithImpl<$Res>
    extends _$PhoneNumberStateCopyWithImpl<$Res, _$_PhoneNumberState>
    implements _$$_PhoneNumberStateCopyWith<$Res> {
  __$$_PhoneNumberStateCopyWithImpl(
      _$_PhoneNumberState _value, $Res Function(_$_PhoneNumberState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? phoneNumber = null,
    Object? message = null,
    Object? date = null,
  }) {
    return _then(_$_PhoneNumberState(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberState extends _PhoneNumberState {
  const _$_PhoneNumberState(
      {this.identifier = 0,
      this.phoneNumber = "",
      this.message = "",
      this.date = ""})
      : super._();

  @override
  @JsonKey()
  final int identifier;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'PhoneNumberState(identifier: $identifier, phoneNumber: $phoneNumber, message: $message, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberState &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, phoneNumber, message, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberStateCopyWith<_$_PhoneNumberState> get copyWith =>
      __$$_PhoneNumberStateCopyWithImpl<_$_PhoneNumberState>(this, _$identity);
}

abstract class _PhoneNumberState extends PhoneNumberState {
  const factory _PhoneNumberState(
      {final int identifier,
      final String phoneNumber,
      final String message,
      final String date}) = _$_PhoneNumberState;
  const _PhoneNumberState._() : super._();

  @override
  int get identifier;
  @override
  String get phoneNumber;
  @override
  String get message;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberStateCopyWith<_$_PhoneNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}
