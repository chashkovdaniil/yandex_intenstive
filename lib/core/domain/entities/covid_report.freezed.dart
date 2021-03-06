// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'covid_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CovidReportTearOff {
  const _$CovidReportTearOff();

  _CovidReport call(
      {@HiveField(0) required DateTime date,
      @HiveField(1) required int confirmed,
      @HiveField(2) required int deaths,
      @HiveField(3) required int recovered,
      @HiveField(4) required int confirmedDiff,
      @HiveField(5) required int deathsDiff,
      @HiveField(6) required int recoveredDiff,
      @HiveField(7) required DateTime lastUpdate,
      @HiveField(8) required int active,
      @HiveField(9) required int activeDiff,
      @HiveField(10) required double fatalityRate}) {
    return _CovidReport(
      date: date,
      confirmed: confirmed,
      deaths: deaths,
      recovered: recovered,
      confirmedDiff: confirmedDiff,
      deathsDiff: deathsDiff,
      recoveredDiff: recoveredDiff,
      lastUpdate: lastUpdate,
      active: active,
      activeDiff: activeDiff,
      fatalityRate: fatalityRate,
    );
  }
}

/// @nodoc
const $CovidReport = _$CovidReportTearOff();

/// @nodoc
mixin _$CovidReport {
  @HiveField(0)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(1)
  int get confirmed => throw _privateConstructorUsedError;
  @HiveField(2)
  int get deaths => throw _privateConstructorUsedError;
  @HiveField(3)
  int get recovered => throw _privateConstructorUsedError;
  @HiveField(4)
  int get confirmedDiff => throw _privateConstructorUsedError;
  @HiveField(5)
  int get deathsDiff => throw _privateConstructorUsedError;
  @HiveField(6)
  int get recoveredDiff => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  @HiveField(8)
  int get active => throw _privateConstructorUsedError;
  @HiveField(9)
  int get activeDiff => throw _privateConstructorUsedError;
  @HiveField(10)
  double get fatalityRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CovidReportCopyWith<CovidReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CovidReportCopyWith<$Res> {
  factory $CovidReportCopyWith(
          CovidReport value, $Res Function(CovidReport) then) =
      _$CovidReportCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) DateTime date,
      @HiveField(1) int confirmed,
      @HiveField(2) int deaths,
      @HiveField(3) int recovered,
      @HiveField(4) int confirmedDiff,
      @HiveField(5) int deathsDiff,
      @HiveField(6) int recoveredDiff,
      @HiveField(7) DateTime lastUpdate,
      @HiveField(8) int active,
      @HiveField(9) int activeDiff,
      @HiveField(10) double fatalityRate});
}

/// @nodoc
class _$CovidReportCopyWithImpl<$Res> implements $CovidReportCopyWith<$Res> {
  _$CovidReportCopyWithImpl(this._value, this._then);

  final CovidReport _value;
  // ignore: unused_field
  final $Res Function(CovidReport) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? confirmedDiff = freezed,
    Object? deathsDiff = freezed,
    Object? recoveredDiff = freezed,
    Object? lastUpdate = freezed,
    Object? active = freezed,
    Object? activeDiff = freezed,
    Object? fatalityRate = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as int,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedDiff: confirmedDiff == freezed
          ? _value.confirmedDiff
          : confirmedDiff // ignore: cast_nullable_to_non_nullable
              as int,
      deathsDiff: deathsDiff == freezed
          ? _value.deathsDiff
          : deathsDiff // ignore: cast_nullable_to_non_nullable
              as int,
      recoveredDiff: recoveredDiff == freezed
          ? _value.recoveredDiff
          : recoveredDiff // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      activeDiff: activeDiff == freezed
          ? _value.activeDiff
          : activeDiff // ignore: cast_nullable_to_non_nullable
              as int,
      fatalityRate: fatalityRate == freezed
          ? _value.fatalityRate
          : fatalityRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CovidReportCopyWith<$Res>
    implements $CovidReportCopyWith<$Res> {
  factory _$CovidReportCopyWith(
          _CovidReport value, $Res Function(_CovidReport) then) =
      __$CovidReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) DateTime date,
      @HiveField(1) int confirmed,
      @HiveField(2) int deaths,
      @HiveField(3) int recovered,
      @HiveField(4) int confirmedDiff,
      @HiveField(5) int deathsDiff,
      @HiveField(6) int recoveredDiff,
      @HiveField(7) DateTime lastUpdate,
      @HiveField(8) int active,
      @HiveField(9) int activeDiff,
      @HiveField(10) double fatalityRate});
}

/// @nodoc
class __$CovidReportCopyWithImpl<$Res> extends _$CovidReportCopyWithImpl<$Res>
    implements _$CovidReportCopyWith<$Res> {
  __$CovidReportCopyWithImpl(
      _CovidReport _value, $Res Function(_CovidReport) _then)
      : super(_value, (v) => _then(v as _CovidReport));

  @override
  _CovidReport get _value => super._value as _CovidReport;

  @override
  $Res call({
    Object? date = freezed,
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? confirmedDiff = freezed,
    Object? deathsDiff = freezed,
    Object? recoveredDiff = freezed,
    Object? lastUpdate = freezed,
    Object? active = freezed,
    Object? activeDiff = freezed,
    Object? fatalityRate = freezed,
  }) {
    return _then(_CovidReport(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as int,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedDiff: confirmedDiff == freezed
          ? _value.confirmedDiff
          : confirmedDiff // ignore: cast_nullable_to_non_nullable
              as int,
      deathsDiff: deathsDiff == freezed
          ? _value.deathsDiff
          : deathsDiff // ignore: cast_nullable_to_non_nullable
              as int,
      recoveredDiff: recoveredDiff == freezed
          ? _value.recoveredDiff
          : recoveredDiff // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      activeDiff: activeDiff == freezed
          ? _value.activeDiff
          : activeDiff // ignore: cast_nullable_to_non_nullable
              as int,
      fatalityRate: fatalityRate == freezed
          ? _value.fatalityRate
          : fatalityRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 5, adapterName: 'CovidReportAdapter')
class _$_CovidReport implements _CovidReport {
  _$_CovidReport(
      {@HiveField(0) required this.date,
      @HiveField(1) required this.confirmed,
      @HiveField(2) required this.deaths,
      @HiveField(3) required this.recovered,
      @HiveField(4) required this.confirmedDiff,
      @HiveField(5) required this.deathsDiff,
      @HiveField(6) required this.recoveredDiff,
      @HiveField(7) required this.lastUpdate,
      @HiveField(8) required this.active,
      @HiveField(9) required this.activeDiff,
      @HiveField(10) required this.fatalityRate});

  @override
  @HiveField(0)
  final DateTime date;
  @override
  @HiveField(1)
  final int confirmed;
  @override
  @HiveField(2)
  final int deaths;
  @override
  @HiveField(3)
  final int recovered;
  @override
  @HiveField(4)
  final int confirmedDiff;
  @override
  @HiveField(5)
  final int deathsDiff;
  @override
  @HiveField(6)
  final int recoveredDiff;
  @override
  @HiveField(7)
  final DateTime lastUpdate;
  @override
  @HiveField(8)
  final int active;
  @override
  @HiveField(9)
  final int activeDiff;
  @override
  @HiveField(10)
  final double fatalityRate;

  @override
  String toString() {
    return 'CovidReport(date: $date, confirmed: $confirmed, deaths: $deaths, recovered: $recovered, confirmedDiff: $confirmedDiff, deathsDiff: $deathsDiff, recoveredDiff: $recoveredDiff, lastUpdate: $lastUpdate, active: $active, activeDiff: $activeDiff, fatalityRate: $fatalityRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CovidReport &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.confirmed, confirmed) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed, confirmed)) &&
            (identical(other.deaths, deaths) ||
                const DeepCollectionEquality().equals(other.deaths, deaths)) &&
            (identical(other.recovered, recovered) ||
                const DeepCollectionEquality()
                    .equals(other.recovered, recovered)) &&
            (identical(other.confirmedDiff, confirmedDiff) ||
                const DeepCollectionEquality()
                    .equals(other.confirmedDiff, confirmedDiff)) &&
            (identical(other.deathsDiff, deathsDiff) ||
                const DeepCollectionEquality()
                    .equals(other.deathsDiff, deathsDiff)) &&
            (identical(other.recoveredDiff, recoveredDiff) ||
                const DeepCollectionEquality()
                    .equals(other.recoveredDiff, recoveredDiff)) &&
            (identical(other.lastUpdate, lastUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdate, lastUpdate)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.activeDiff, activeDiff) ||
                const DeepCollectionEquality()
                    .equals(other.activeDiff, activeDiff)) &&
            (identical(other.fatalityRate, fatalityRate) ||
                const DeepCollectionEquality()
                    .equals(other.fatalityRate, fatalityRate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(confirmed) ^
      const DeepCollectionEquality().hash(deaths) ^
      const DeepCollectionEquality().hash(recovered) ^
      const DeepCollectionEquality().hash(confirmedDiff) ^
      const DeepCollectionEquality().hash(deathsDiff) ^
      const DeepCollectionEquality().hash(recoveredDiff) ^
      const DeepCollectionEquality().hash(lastUpdate) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(activeDiff) ^
      const DeepCollectionEquality().hash(fatalityRate);

  @JsonKey(ignore: true)
  @override
  _$CovidReportCopyWith<_CovidReport> get copyWith =>
      __$CovidReportCopyWithImpl<_CovidReport>(this, _$identity);
}

abstract class _CovidReport implements CovidReport {
  factory _CovidReport(
      {@HiveField(0) required DateTime date,
      @HiveField(1) required int confirmed,
      @HiveField(2) required int deaths,
      @HiveField(3) required int recovered,
      @HiveField(4) required int confirmedDiff,
      @HiveField(5) required int deathsDiff,
      @HiveField(6) required int recoveredDiff,
      @HiveField(7) required DateTime lastUpdate,
      @HiveField(8) required int active,
      @HiveField(9) required int activeDiff,
      @HiveField(10) required double fatalityRate}) = _$_CovidReport;

  @override
  @HiveField(0)
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int get confirmed => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int get deaths => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  int get recovered => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  int get confirmedDiff => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int get deathsDiff => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  int get recoveredDiff => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  int get active => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  int get activeDiff => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  double get fatalityRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CovidReportCopyWith<_CovidReport> get copyWith =>
      throw _privateConstructorUsedError;
}
