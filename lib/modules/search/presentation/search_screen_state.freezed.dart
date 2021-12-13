// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchScreenStateStatusTearOff {
  const _$SearchScreenStateStatusTearOff();

  Success success() {
    return const Success();
  }

  Loading loading() {
    return const Loading();
  }

  Failed failed() {
    return const Failed();
  }
}

/// @nodoc
const $SearchScreenStateStatus = _$SearchScreenStateStatusTearOff();

/// @nodoc
mixin _$SearchScreenStateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateStatusCopyWith<$Res> {
  factory $SearchScreenStateStatusCopyWith(SearchScreenStateStatus value,
          $Res Function(SearchScreenStateStatus) then) =
      _$SearchScreenStateStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchScreenStateStatusCopyWithImpl<$Res>
    implements $SearchScreenStateStatusCopyWith<$Res> {
  _$SearchScreenStateStatusCopyWithImpl(this._value, this._then);

  final SearchScreenStateStatus _value;
  // ignore: unused_field
  final $Res Function(SearchScreenStateStatus) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$SearchScreenStateStatusCopyWithImpl<$Res>
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
    return 'SearchScreenStateStatus.success()';
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
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SearchScreenStateStatus {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$SearchScreenStateStatusCopyWithImpl<$Res>
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
    return 'SearchScreenStateStatus.loading()';
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
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchScreenStateStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedCopyWithImpl<$Res>
    extends _$SearchScreenStateStatusCopyWithImpl<$Res>
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
    return 'SearchScreenStateStatus.failed()';
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
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements SearchScreenStateStatus {
  const factory Failed() = _$Failed;
}

/// @nodoc
class _$SearchScreenStateTearOff {
  const _$SearchScreenStateTearOff();

  _SearchScreenState call(
      {required List<Country> countries,
      required SearchScreenStateStatus status}) {
    return _SearchScreenState(
      countries: countries,
      status: status,
    );
  }
}

/// @nodoc
const $SearchScreenState = _$SearchScreenStateTearOff();

/// @nodoc
mixin _$SearchScreenState {
  List<Country> get countries => throw _privateConstructorUsedError;
  SearchScreenStateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res>;
  $Res call({List<Country> countries, SearchScreenStateStatus status});

  $SearchScreenStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  final SearchScreenState _value;
  // ignore: unused_field
  final $Res Function(SearchScreenState) _then;

  @override
  $Res call({
    Object? countries = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchScreenStateStatus,
    ));
  }

  @override
  $SearchScreenStateStatusCopyWith<$Res> get status {
    return $SearchScreenStateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$SearchScreenStateCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$SearchScreenStateCopyWith(
          _SearchScreenState value, $Res Function(_SearchScreenState) then) =
      __$SearchScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Country> countries, SearchScreenStateStatus status});

  @override
  $SearchScreenStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$SearchScreenStateCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements _$SearchScreenStateCopyWith<$Res> {
  __$SearchScreenStateCopyWithImpl(
      _SearchScreenState _value, $Res Function(_SearchScreenState) _then)
      : super(_value, (v) => _then(v as _SearchScreenState));

  @override
  _SearchScreenState get _value => super._value as _SearchScreenState;

  @override
  $Res call({
    Object? countries = freezed,
    Object? status = freezed,
  }) {
    return _then(_SearchScreenState(
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchScreenStateStatus,
    ));
  }
}

/// @nodoc

class _$_SearchScreenState implements _SearchScreenState {
  const _$_SearchScreenState({required this.countries, required this.status});

  @override
  final List<Country> countries;
  @override
  final SearchScreenStateStatus status;

  @override
  String toString() {
    return 'SearchScreenState(countries: $countries, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchScreenState &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$SearchScreenStateCopyWith<_SearchScreenState> get copyWith =>
      __$SearchScreenStateCopyWithImpl<_SearchScreenState>(this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  const factory _SearchScreenState(
      {required List<Country> countries,
      required SearchScreenStateStatus status}) = _$_SearchScreenState;

  @override
  List<Country> get countries => throw _privateConstructorUsedError;
  @override
  SearchScreenStateStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchScreenStateCopyWith<_SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
