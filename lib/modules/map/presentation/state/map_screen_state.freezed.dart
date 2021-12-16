// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapScreenStateStatusTearOff {
  const _$MapScreenStateStatusTearOff();

  Success success() {
    return const Success();
  }

  Failed failed() {
    return const Failed();
  }

  Loading loading() {
    return const Loading();
  }
}

/// @nodoc
const $MapScreenStateStatus = _$MapScreenStateStatusTearOff();

/// @nodoc
mixin _$MapScreenStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failed,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapScreenStateStatusCopyWith<$Res> {
  factory $MapScreenStateStatusCopyWith(MapScreenStateStatus value,
          $Res Function(MapScreenStateStatus) then) =
      _$MapScreenStateStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapScreenStateStatusCopyWithImpl<$Res>
    implements $MapScreenStateStatusCopyWith<$Res> {
  _$MapScreenStateStatusCopyWithImpl(this._value, this._then);

  final MapScreenStateStatus _value;
  // ignore: unused_field
  final $Res Function(MapScreenStateStatus) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$MapScreenStateStatusCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

/// @nodoc

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'MapScreenStateStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
    required TResult Function(Loading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements MapScreenStateStatus {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedCopyWithImpl<$Res>
    extends _$MapScreenStateStatusCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;
}

/// @nodoc

class _$Failed implements Failed {
  const _$Failed();

  @override
  String toString() {
    return 'MapScreenStateStatus.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
    required TResult Function(Loading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements MapScreenStateStatus {
  const factory Failed() = _$Failed;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$MapScreenStateStatusCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MapScreenStateStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MapScreenStateStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
class _$MapScreenStateTearOff {
  const _$MapScreenStateTearOff();

  _MapScreenState call(
      {required MapScreenStateStatus status,
      Map<String, CountryCovid>? countriesCovid}) {
    return _MapScreenState(
      status: status,
      countriesCovid: countriesCovid,
    );
  }
}

/// @nodoc
const $MapScreenState = _$MapScreenStateTearOff();

/// @nodoc
mixin _$MapScreenState {
  MapScreenStateStatus get status => throw _privateConstructorUsedError;

  Map<String, CountryCovid>? get countriesCovid =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapScreenStateCopyWith<MapScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapScreenStateCopyWith<$Res> {
  factory $MapScreenStateCopyWith(
          MapScreenState value, $Res Function(MapScreenState) then) =
      _$MapScreenStateCopyWithImpl<$Res>;

  $Res call(
      {MapScreenStateStatus status, Map<String, CountryCovid>? countriesCovid});

  $MapScreenStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$MapScreenStateCopyWithImpl<$Res>
    implements $MapScreenStateCopyWith<$Res> {
  _$MapScreenStateCopyWithImpl(this._value, this._then);

  final MapScreenState _value;
  // ignore: unused_field
  final $Res Function(MapScreenState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? countriesCovid = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MapScreenStateStatus,
      countriesCovid: countriesCovid == freezed
          ? _value.countriesCovid
          : countriesCovid // ignore: cast_nullable_to_non_nullable
              as Map<String, CountryCovid>?,
    ));
  }

  @override
  $MapScreenStateStatusCopyWith<$Res> get status {
    return $MapScreenStateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$MapScreenStateCopyWith<$Res>
    implements $MapScreenStateCopyWith<$Res> {
  factory _$MapScreenStateCopyWith(
          _MapScreenState value, $Res Function(_MapScreenState) then) =
      __$MapScreenStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {MapScreenStateStatus status, Map<String, CountryCovid>? countriesCovid});

  @override
  $MapScreenStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$MapScreenStateCopyWithImpl<$Res>
    extends _$MapScreenStateCopyWithImpl<$Res>
    implements _$MapScreenStateCopyWith<$Res> {
  __$MapScreenStateCopyWithImpl(
      _MapScreenState _value, $Res Function(_MapScreenState) _then)
      : super(_value, (v) => _then(v as _MapScreenState));

  @override
  _MapScreenState get _value => super._value as _MapScreenState;

  @override
  $Res call({
    Object? status = freezed,
    Object? countriesCovid = freezed,
  }) {
    return _then(_MapScreenState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MapScreenStateStatus,
      countriesCovid: countriesCovid == freezed
          ? _value.countriesCovid
          : countriesCovid // ignore: cast_nullable_to_non_nullable
              as Map<String, CountryCovid>?,
    ));
  }
}

/// @nodoc

class _$_MapScreenState implements _MapScreenState {
  const _$_MapScreenState({required this.status, this.countriesCovid});

  @override
  final MapScreenStateStatus status;
  @override
  final Map<String, CountryCovid>? countriesCovid;

  @override
  String toString() {
    return 'MapScreenState(status: $status, countriesCovid: $countriesCovid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapScreenState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.countriesCovid, countriesCovid) ||
                const DeepCollectionEquality()
                    .equals(other.countriesCovid, countriesCovid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(countriesCovid);

  @JsonKey(ignore: true)
  @override
  _$MapScreenStateCopyWith<_MapScreenState> get copyWith =>
      __$MapScreenStateCopyWithImpl<_MapScreenState>(this, _$identity);
}

abstract class _MapScreenState implements MapScreenState {
  const factory _MapScreenState(
      {required MapScreenStateStatus status,
      Map<String, CountryCovid>? countriesCovid}) = _$_MapScreenState;

  @override
  MapScreenStateStatus get status => throw _privateConstructorUsedError;

  @override
  Map<String, CountryCovid>? get countriesCovid =>
      throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$MapScreenStateCopyWith<_MapScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
