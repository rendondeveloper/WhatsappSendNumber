// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryState {
  List<PhoneNumberState> get numberPhones => throw _privateConstructorUsedError;
  String get numberToLaunch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call({List<PhoneNumberState> numberPhones, String numberToLaunch});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberPhones = null,
    Object? numberToLaunch = null,
  }) {
    return _then(_value.copyWith(
      numberPhones: null == numberPhones
          ? _value.numberPhones
          : numberPhones // ignore: cast_nullable_to_non_nullable
              as List<PhoneNumberState>,
      numberToLaunch: null == numberToLaunch
          ? _value.numberToLaunch
          : numberToLaunch // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$_HistoryStateCopyWith(
          _$_HistoryState value, $Res Function(_$_HistoryState) then) =
      __$$_HistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PhoneNumberState> numberPhones, String numberToLaunch});
}

/// @nodoc
class __$$_HistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryState>
    implements _$$_HistoryStateCopyWith<$Res> {
  __$$_HistoryStateCopyWithImpl(
      _$_HistoryState _value, $Res Function(_$_HistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberPhones = null,
    Object? numberToLaunch = null,
  }) {
    return _then(_$_HistoryState(
      numberPhones: null == numberPhones
          ? _value._numberPhones
          : numberPhones // ignore: cast_nullable_to_non_nullable
              as List<PhoneNumberState>,
      numberToLaunch: null == numberToLaunch
          ? _value.numberToLaunch
          : numberToLaunch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HistoryState extends _HistoryState {
  const _$_HistoryState(
      {final List<PhoneNumberState> numberPhones = const [],
      this.numberToLaunch = ""})
      : _numberPhones = numberPhones,
        super._();

  final List<PhoneNumberState> _numberPhones;
  @override
  @JsonKey()
  List<PhoneNumberState> get numberPhones {
    if (_numberPhones is EqualUnmodifiableListView) return _numberPhones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numberPhones);
  }

  @override
  @JsonKey()
  final String numberToLaunch;

  @override
  String toString() {
    return 'HistoryState(numberPhones: $numberPhones, numberToLaunch: $numberToLaunch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryState &&
            const DeepCollectionEquality()
                .equals(other._numberPhones, _numberPhones) &&
            (identical(other.numberToLaunch, numberToLaunch) ||
                other.numberToLaunch == numberToLaunch));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_numberPhones), numberToLaunch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      __$$_HistoryStateCopyWithImpl<_$_HistoryState>(this, _$identity);
}

abstract class _HistoryState extends HistoryState {
  const factory _HistoryState(
      {final List<PhoneNumberState> numberPhones,
      final String numberToLaunch}) = _$_HistoryState;
  const _HistoryState._() : super._();

  @override
  List<PhoneNumberState> get numberPhones;
  @override
  String get numberToLaunch;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
