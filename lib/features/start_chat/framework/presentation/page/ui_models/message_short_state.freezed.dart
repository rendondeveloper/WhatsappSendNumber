// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_short_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageShortState {
  int get identifier => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageShortStateCopyWith<MessageShortState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageShortStateCopyWith<$Res> {
  factory $MessageShortStateCopyWith(
          MessageShortState value, $Res Function(MessageShortState) then) =
      _$MessageShortStateCopyWithImpl<$Res, MessageShortState>;
  @useResult
  $Res call({int identifier, String message});
}

/// @nodoc
class _$MessageShortStateCopyWithImpl<$Res, $Val extends MessageShortState>
    implements $MessageShortStateCopyWith<$Res> {
  _$MessageShortStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageShortStateCopyWith<$Res>
    implements $MessageShortStateCopyWith<$Res> {
  factory _$$_MessageShortStateCopyWith(_$_MessageShortState value,
          $Res Function(_$_MessageShortState) then) =
      __$$_MessageShortStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int identifier, String message});
}

/// @nodoc
class __$$_MessageShortStateCopyWithImpl<$Res>
    extends _$MessageShortStateCopyWithImpl<$Res, _$_MessageShortState>
    implements _$$_MessageShortStateCopyWith<$Res> {
  __$$_MessageShortStateCopyWithImpl(
      _$_MessageShortState _value, $Res Function(_$_MessageShortState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? message = null,
  }) {
    return _then(_$_MessageShortState(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageShortState extends _MessageShortState {
  const _$_MessageShortState({this.identifier = 0, this.message = ""})
      : super._();

  @override
  @JsonKey()
  final int identifier;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MessageShortState(identifier: $identifier, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageShortState &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageShortStateCopyWith<_$_MessageShortState> get copyWith =>
      __$$_MessageShortStateCopyWithImpl<_$_MessageShortState>(
          this, _$identity);
}

abstract class _MessageShortState extends MessageShortState {
  const factory _MessageShortState(
      {final int identifier, final String message}) = _$_MessageShortState;
  const _MessageShortState._() : super._();

  @override
  int get identifier;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_MessageShortStateCopyWith<_$_MessageShortState> get copyWith =>
      throw _privateConstructorUsedError;
}
