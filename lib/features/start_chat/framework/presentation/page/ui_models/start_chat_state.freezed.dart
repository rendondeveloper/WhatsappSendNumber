// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartChatState {
  bool get stateErrorInput => throw _privateConstructorUsedError;
  String get numberToLaunch => throw _privateConstructorUsedError;
  MessageShortState get message => throw _privateConstructorUsedError;
  List<CountryState> get countries => throw _privateConstructorUsedError;
  CountryState get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartChatStateCopyWith<StartChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartChatStateCopyWith<$Res> {
  factory $StartChatStateCopyWith(
          StartChatState value, $Res Function(StartChatState) then) =
      _$StartChatStateCopyWithImpl<$Res, StartChatState>;
  @useResult
  $Res call(
      {bool stateErrorInput,
      String numberToLaunch,
      MessageShortState message,
      List<CountryState> countries,
      CountryState country});

  $MessageShortStateCopyWith<$Res> get message;
  $CountryStateCopyWith<$Res> get country;
}

/// @nodoc
class _$StartChatStateCopyWithImpl<$Res, $Val extends StartChatState>
    implements $StartChatStateCopyWith<$Res> {
  _$StartChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateErrorInput = null,
    Object? numberToLaunch = null,
    Object? message = null,
    Object? countries = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      stateErrorInput: null == stateErrorInput
          ? _value.stateErrorInput
          : stateErrorInput // ignore: cast_nullable_to_non_nullable
              as bool,
      numberToLaunch: null == numberToLaunch
          ? _value.numberToLaunch
          : numberToLaunch // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageShortState,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryState>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageShortStateCopyWith<$Res> get message {
    return $MessageShortStateCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryStateCopyWith<$Res> get country {
    return $CountryStateCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StartChatStateCopyWith<$Res>
    implements $StartChatStateCopyWith<$Res> {
  factory _$$_StartChatStateCopyWith(
          _$_StartChatState value, $Res Function(_$_StartChatState) then) =
      __$$_StartChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool stateErrorInput,
      String numberToLaunch,
      MessageShortState message,
      List<CountryState> countries,
      CountryState country});

  @override
  $MessageShortStateCopyWith<$Res> get message;
  @override
  $CountryStateCopyWith<$Res> get country;
}

/// @nodoc
class __$$_StartChatStateCopyWithImpl<$Res>
    extends _$StartChatStateCopyWithImpl<$Res, _$_StartChatState>
    implements _$$_StartChatStateCopyWith<$Res> {
  __$$_StartChatStateCopyWithImpl(
      _$_StartChatState _value, $Res Function(_$_StartChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateErrorInput = null,
    Object? numberToLaunch = null,
    Object? message = null,
    Object? countries = null,
    Object? country = null,
  }) {
    return _then(_$_StartChatState(
      stateErrorInput: null == stateErrorInput
          ? _value.stateErrorInput
          : stateErrorInput // ignore: cast_nullable_to_non_nullable
              as bool,
      numberToLaunch: null == numberToLaunch
          ? _value.numberToLaunch
          : numberToLaunch // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageShortState,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryState>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryState,
    ));
  }
}

/// @nodoc

class _$_StartChatState extends _StartChatState {
  const _$_StartChatState(
      {this.stateErrorInput = false,
      this.numberToLaunch = "",
      this.message = const MessageShortState(),
      final List<CountryState> countries = const [],
      this.country = const CountryState()})
      : _countries = countries,
        super._();

  @override
  @JsonKey()
  final bool stateErrorInput;
  @override
  @JsonKey()
  final String numberToLaunch;
  @override
  @JsonKey()
  final MessageShortState message;
  final List<CountryState> _countries;
  @override
  @JsonKey()
  List<CountryState> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  @JsonKey()
  final CountryState country;

  @override
  String toString() {
    return 'StartChatState(stateErrorInput: $stateErrorInput, numberToLaunch: $numberToLaunch, message: $message, countries: $countries, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartChatState &&
            (identical(other.stateErrorInput, stateErrorInput) ||
                other.stateErrorInput == stateErrorInput) &&
            (identical(other.numberToLaunch, numberToLaunch) ||
                other.numberToLaunch == numberToLaunch) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateErrorInput, numberToLaunch,
      message, const DeepCollectionEquality().hash(_countries), country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartChatStateCopyWith<_$_StartChatState> get copyWith =>
      __$$_StartChatStateCopyWithImpl<_$_StartChatState>(this, _$identity);
}

abstract class _StartChatState extends StartChatState {
  const factory _StartChatState(
      {final bool stateErrorInput,
      final String numberToLaunch,
      final MessageShortState message,
      final List<CountryState> countries,
      final CountryState country}) = _$_StartChatState;
  const _StartChatState._() : super._();

  @override
  bool get stateErrorInput;
  @override
  String get numberToLaunch;
  @override
  MessageShortState get message;
  @override
  List<CountryState> get countries;
  @override
  CountryState get country;
  @override
  @JsonKey(ignore: true)
  _$$_StartChatStateCopyWith<_$_StartChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
