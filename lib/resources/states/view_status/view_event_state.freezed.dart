// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewEventState {
  ViewEvent get viewEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewEventStateCopyWith<ViewEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewEventStateCopyWith<$Res> {
  factory $ViewEventStateCopyWith(
          ViewEventState value, $Res Function(ViewEventState) then) =
      _$ViewEventStateCopyWithImpl<$Res, ViewEventState>;
  @useResult
  $Res call({ViewEvent viewEvent});
}

/// @nodoc
class _$ViewEventStateCopyWithImpl<$Res, $Val extends ViewEventState>
    implements $ViewEventStateCopyWith<$Res> {
  _$ViewEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewEvent = null,
  }) {
    return _then(_value.copyWith(
      viewEvent: null == viewEvent
          ? _value.viewEvent
          : viewEvent // ignore: cast_nullable_to_non_nullable
              as ViewEvent,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewEventStateCopyWith<$Res>
    implements $ViewEventStateCopyWith<$Res> {
  factory _$$_ViewEventStateCopyWith(
          _$_ViewEventState value, $Res Function(_$_ViewEventState) then) =
      __$$_ViewEventStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewEvent viewEvent});
}

/// @nodoc
class __$$_ViewEventStateCopyWithImpl<$Res>
    extends _$ViewEventStateCopyWithImpl<$Res, _$_ViewEventState>
    implements _$$_ViewEventStateCopyWith<$Res> {
  __$$_ViewEventStateCopyWithImpl(
      _$_ViewEventState _value, $Res Function(_$_ViewEventState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewEvent = null,
  }) {
    return _then(_$_ViewEventState(
      viewEvent: null == viewEvent
          ? _value.viewEvent
          : viewEvent // ignore: cast_nullable_to_non_nullable
              as ViewEvent,
    ));
  }
}

/// @nodoc

class _$_ViewEventState extends _ViewEventState {
  _$_ViewEventState({this.viewEvent = const EventLoading()}) : super._();

  @override
  @JsonKey()
  final ViewEvent viewEvent;

  @override
  String toString() {
    return 'ViewEventState(viewEvent: $viewEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewEventState &&
            (identical(other.viewEvent, viewEvent) ||
                other.viewEvent == viewEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewEventStateCopyWith<_$_ViewEventState> get copyWith =>
      __$$_ViewEventStateCopyWithImpl<_$_ViewEventState>(this, _$identity);
}

abstract class _ViewEventState extends ViewEventState {
  factory _ViewEventState({final ViewEvent viewEvent}) = _$_ViewEventState;
  _ViewEventState._() : super._();

  @override
  ViewEvent get viewEvent;
  @override
  @JsonKey(ignore: true)
  _$$_ViewEventStateCopyWith<_$_ViewEventState> get copyWith =>
      throw _privateConstructorUsedError;
}
