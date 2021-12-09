// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeScreenStateStatusTearOff {
  const _$HomeScreenStateStatusTearOff();

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
const $HomeScreenStateStatus = _$HomeScreenStateStatusTearOff();

/// @nodoc
mixin _$HomeScreenStateStatus {
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
abstract class $HomeScreenStateStatusCopyWith<$Res> {
  factory $HomeScreenStateStatusCopyWith(HomeScreenStateStatus value,
          $Res Function(HomeScreenStateStatus) then) =
      _$HomeScreenStateStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeScreenStateStatusCopyWithImpl<$Res>
    implements $HomeScreenStateStatusCopyWith<$Res> {
  _$HomeScreenStateStatusCopyWithImpl(this._value, this._then);

  final HomeScreenStateStatus _value;
  // ignore: unused_field
  final $Res Function(HomeScreenStateStatus) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$HomeScreenStateStatusCopyWithImpl<$Res>
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
    return 'HomeScreenStateStatus.success()';
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

abstract class Success implements HomeScreenStateStatus {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedCopyWithImpl<$Res>
    extends _$HomeScreenStateStatusCopyWithImpl<$Res>
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
    return 'HomeScreenStateStatus.failed()';
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

abstract class Failed implements HomeScreenStateStatus {
  const factory Failed() = _$Failed;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$HomeScreenStateStatusCopyWithImpl<$Res>
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
    return 'HomeScreenStateStatus.loading()';
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

abstract class Loading implements HomeScreenStateStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
class _$HomeScreenStateTearOff {
  const _$HomeScreenStateTearOff();

  _HomeScreenState call(
      {required HomeScreenStateStatus status,
      List<List<double>>? confirmedSpots,
      List<List<double>>? recoveredSpots,
      Map<String, Object>? testData}) {
    return _HomeScreenState(
      status: status,
      confirmedSpots: confirmedSpots,
      recoveredSpots: recoveredSpots,
      testData: testData,
    );
  }
}

/// @nodoc
const $HomeScreenState = _$HomeScreenStateTearOff();

/// @nodoc
mixin _$HomeScreenState {
  HomeScreenStateStatus get status => throw _privateConstructorUsedError;
  List<List<double>>? get confirmedSpots => throw _privateConstructorUsedError;
  List<List<double>>? get recoveredSpots => throw _privateConstructorUsedError;
  Map<String, Object>? get testData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
  $Res call(
      {HomeScreenStateStatus status,
      List<List<double>>? confirmedSpots,
      List<List<double>>? recoveredSpots,
      Map<String, Object>? testData});

  $HomeScreenStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? confirmedSpots = freezed,
    Object? recoveredSpots = freezed,
    Object? testData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeScreenStateStatus,
      confirmedSpots: confirmedSpots == freezed
          ? _value.confirmedSpots
          : confirmedSpots // ignore: cast_nullable_to_non_nullable
              as List<List<double>>?,
      recoveredSpots: recoveredSpots == freezed
          ? _value.recoveredSpots
          : recoveredSpots // ignore: cast_nullable_to_non_nullable
              as List<List<double>>?,
      testData: testData == freezed
          ? _value.testData
          : testData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
    ));
  }

  @override
  $HomeScreenStateStatusCopyWith<$Res> get status {
    return $HomeScreenStateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$HomeScreenStateCopyWith(
          _HomeScreenState value, $Res Function(_HomeScreenState) then) =
      __$HomeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {HomeScreenStateStatus status,
      List<List<double>>? confirmedSpots,
      List<List<double>>? recoveredSpots,
      Map<String, Object>? testData});

  @override
  $HomeScreenStateStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res>
    implements _$HomeScreenStateCopyWith<$Res> {
  __$HomeScreenStateCopyWithImpl(
      _HomeScreenState _value, $Res Function(_HomeScreenState) _then)
      : super(_value, (v) => _then(v as _HomeScreenState));

  @override
  _HomeScreenState get _value => super._value as _HomeScreenState;

  @override
  $Res call({
    Object? status = freezed,
    Object? confirmedSpots = freezed,
    Object? recoveredSpots = freezed,
    Object? testData = freezed,
  }) {
    return _then(_HomeScreenState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeScreenStateStatus,
      confirmedSpots: confirmedSpots == freezed
          ? _value.confirmedSpots
          : confirmedSpots // ignore: cast_nullable_to_non_nullable
              as List<List<double>>?,
      recoveredSpots: recoveredSpots == freezed
          ? _value.recoveredSpots
          : recoveredSpots // ignore: cast_nullable_to_non_nullable
              as List<List<double>>?,
      testData: testData == freezed
          ? _value.testData
          : testData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  const _$_HomeScreenState(
      {required this.status,
      this.confirmedSpots,
      this.recoveredSpots,
      this.testData});

  @override
  final HomeScreenStateStatus status;
  @override
  final List<List<double>>? confirmedSpots;
  @override
  final List<List<double>>? recoveredSpots;
  @override
  final Map<String, Object>? testData;

  @override
  String toString() {
    return 'HomeScreenState(status: $status, confirmedSpots: $confirmedSpots, recoveredSpots: $recoveredSpots, testData: $testData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeScreenState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.confirmedSpots, confirmedSpots) ||
                const DeepCollectionEquality()
                    .equals(other.confirmedSpots, confirmedSpots)) &&
            (identical(other.recoveredSpots, recoveredSpots) ||
                const DeepCollectionEquality()
                    .equals(other.recoveredSpots, recoveredSpots)) &&
            (identical(other.testData, testData) ||
                const DeepCollectionEquality()
                    .equals(other.testData, testData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(confirmedSpots) ^
      const DeepCollectionEquality().hash(recoveredSpots) ^
      const DeepCollectionEquality().hash(testData);

  @JsonKey(ignore: true)
  @override
  _$HomeScreenStateCopyWith<_HomeScreenState> get copyWith =>
      __$HomeScreenStateCopyWithImpl<_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required HomeScreenStateStatus status,
      List<List<double>>? confirmedSpots,
      List<List<double>>? recoveredSpots,
      Map<String, Object>? testData}) = _$_HomeScreenState;

  @override
  HomeScreenStateStatus get status => throw _privateConstructorUsedError;
  @override
  List<List<double>>? get confirmedSpots => throw _privateConstructorUsedError;
  @override
  List<List<double>>? get recoveredSpots => throw _privateConstructorUsedError;
  @override
  Map<String, Object>? get testData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeScreenStateCopyWith<_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
