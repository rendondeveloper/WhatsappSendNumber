// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendMessageState {
  bool get stateErrorInput => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendMessageStateCopyWith<SendMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageStateCopyWith<$Res> {
  factory $SendMessageStateCopyWith(
          SendMessageState value, $Res Function(SendMessageState) then) =
      _$SendMessageStateCopyWithImpl<$Res, SendMessageState>;
  @useResult
  $Res call({bool stateErrorInput});
}

/// @nodoc
class _$SendMessageStateCopyWithImpl<$Res, $Val extends SendMessageState>
    implements $SendMessageStateCopyWith<$Res> {
  _$SendMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateErrorInput = null,
  }) {
    return _then(_value.copyWith(
      stateErrorInput: null == stateErrorInput
          ? _value.stateErrorInput
          : stateErrorInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendMessageStateCopyWith<$Res>
    implements $SendMessageStateCopyWith<$Res> {
  factory _$$_SendMessageStateCopyWith(
          _$_SendMessageState value, $Res Function(_$_SendMessageState) then) =
      __$$_SendMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool stateErrorInput});
}

/// @nodoc
class __$$_SendMessageStateCopyWithImpl<$Res>
    extends _$SendMessageStateCopyWithImpl<$Res, _$_SendMessageState>
    implements _$$_SendMessageStateCopyWith<$Res> {
  __$$_SendMessageStateCopyWithImpl(
      _$_SendMessageState _value, $Res Function(_$_SendMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateErrorInput = null,
  }) {
    return _then(_$_SendMessageState(
      stateErrorInput: null == stateErrorInput
          ? _value.stateErrorInput
          : stateErrorInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SendMessageState extends _SendMessageState {
  const _$_SendMessageState({this.stateErrorInput = false}) : super._();

  @override
  @JsonKey()
  final bool stateErrorInput;

  @override
  String toString() {
    return 'SendMessageState(stateErrorInput: $stateErrorInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageState &&
            (identical(other.stateErrorInput, stateErrorInput) ||
                other.stateErrorInput == stateErrorInput));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateErrorInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageStateCopyWith<_$_SendMessageState> get copyWith =>
      __$$_SendMessageStateCopyWithImpl<_$_SendMessageState>(this, _$identity);
}

abstract class _SendMessageState extends SendMessageState {
  const factory _SendMessageState({final bool stateErrorInput}) =
      _$_SendMessageState;
  const _SendMessageState._() : super._();

  @override
  bool get stateErrorInput;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageStateCopyWith<_$_SendMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
