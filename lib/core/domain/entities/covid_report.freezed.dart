// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'covid_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CovidReport _$CovidReportFromJson(Map<String, dynamic> json) {
  return _CovidReport.fromJson(json);
}

/// @nodoc
class _$CovidReportTearOff {
  const _$CovidReportTearOff();

  _CovidReport call(
      {required String date,
      required int confirmed,
      required int deaths,
      required int recovered,
      required int confirmedDiff,
      required int deathsDiff,
      required int recoveredDiff,
      required String lastUpdate,
      required int active,
      required int activeDiff,
      required double fatalityRate,
      required Region region}) {
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
      region: region,
    );
  }

  CovidReport fromJson(Map<String, Object> json) {
    return CovidReport.fromJson(json);
  }
}

/// @nodoc
const $CovidReport = _$CovidReportTearOff();

/// @nodoc
mixin _$CovidReport {
  String get date => throw _privateConstructorUsedError;
  int get confirmed => throw _privateConstructorUsedError;
  int get deaths => throw _privateConstructorUsedError;
  int get recovered => throw _privateConstructorUsedError;
  int get confirmedDiff => throw _privateConstructorUsedError;
  int get deathsDiff => throw _privateConstructorUsedError;
  int get recoveredDiff => throw _privateConstructorUsedError;
  String get lastUpdate => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  int get activeDiff => throw _privateConstructorUsedError;
  double get fatalityRate => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {String date,
      int confirmed,
      int deaths,
      int recovered,
      int confirmedDiff,
      int deathsDiff,
      int recoveredDiff,
      String lastUpdate,
      int active,
      int activeDiff,
      double fatalityRate,
      Region region});

  $RegionCopyWith<$Res> get region;
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
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
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
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
    ));
  }

  @override
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value));
    });
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
      {String date,
      int confirmed,
      int deaths,
      int recovered,
      int confirmedDiff,
      int deathsDiff,
      int recoveredDiff,
      String lastUpdate,
      int active,
      int activeDiff,
      double fatalityRate,
      Region region});

  @override
  $RegionCopyWith<$Res> get region;
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
    Object? region = freezed,
  }) {
    return _then(_CovidReport(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
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
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CovidReport implements _CovidReport {
  _$_CovidReport(
      {required this.date,
      required this.confirmed,
      required this.deaths,
      required this.recovered,
      required this.confirmedDiff,
      required this.deathsDiff,
      required this.recoveredDiff,
      required this.lastUpdate,
      required this.active,
      required this.activeDiff,
      required this.fatalityRate,
      required this.region});

  factory _$_CovidReport.fromJson(Map<String, dynamic> json) =>
      _$_$_CovidReportFromJson(json);

  @override
  final String date;
  @override
  final int confirmed;
  @override
  final int deaths;
  @override
  final int recovered;
  @override
  final int confirmedDiff;
  @override
  final int deathsDiff;
  @override
  final int recoveredDiff;
  @override
  final String lastUpdate;
  @override
  final int active;
  @override
  final int activeDiff;
  @override
  final double fatalityRate;
  @override
  final Region region;

  @override
  String toString() {
    return 'CovidReport(date: $date, confirmed: $confirmed, deaths: $deaths, recovered: $recovered, confirmedDiff: $confirmedDiff, deathsDiff: $deathsDiff, recoveredDiff: $recoveredDiff, lastUpdate: $lastUpdate, active: $active, activeDiff: $activeDiff, fatalityRate: $fatalityRate, region: $region)';
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
                    .equals(other.fatalityRate, fatalityRate)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
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
      const DeepCollectionEquality().hash(fatalityRate) ^
      const DeepCollectionEquality().hash(region);

  @JsonKey(ignore: true)
  @override
  _$CovidReportCopyWith<_CovidReport> get copyWith =>
      __$CovidReportCopyWithImpl<_CovidReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CovidReportToJson(this);
  }
}

abstract class _CovidReport implements CovidReport {
  factory _CovidReport(
      {required String date,
      required int confirmed,
      required int deaths,
      required int recovered,
      required int confirmedDiff,
      required int deathsDiff,
      required int recoveredDiff,
      required String lastUpdate,
      required int active,
      required int activeDiff,
      required double fatalityRate,
      required Region region}) = _$_CovidReport;

  factory _CovidReport.fromJson(Map<String, dynamic> json) =
      _$_CovidReport.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get confirmed => throw _privateConstructorUsedError;
  @override
  int get deaths => throw _privateConstructorUsedError;
  @override
  int get recovered => throw _privateConstructorUsedError;
  @override
  int get confirmedDiff => throw _privateConstructorUsedError;
  @override
  int get deathsDiff => throw _privateConstructorUsedError;
  @override
  int get recoveredDiff => throw _privateConstructorUsedError;
  @override
  String get lastUpdate => throw _privateConstructorUsedError;
  @override
  int get active => throw _privateConstructorUsedError;
  @override
  int get activeDiff => throw _privateConstructorUsedError;
  @override
  double get fatalityRate => throw _privateConstructorUsedError;
  @override
  Region get region => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CovidReportCopyWith<_CovidReport> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
class _$RegionTearOff {
  const _$RegionTearOff();

  _Region call(
      {required String iso,
      required String name,
      required String province,
      required String lat,
      required String long}) {
    return _Region(
      iso: iso,
      name: name,
      province: province,
      lat: lat,
      long: long,
    );
  }

  Region fromJson(Map<String, Object> json) {
    return Region.fromJson(json);
  }
}

/// @nodoc
const $Region = _$RegionTearOff();

/// @nodoc
mixin _$Region {
  String get iso => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res>;
  $Res call(
      {String iso, String name, String province, String lat, String long});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res> implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  final Region _value;
  // ignore: unused_field
  final $Res Function(Region) _then;

  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
    Object? province = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegionCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$RegionCopyWith(_Region value, $Res Function(_Region) then) =
      __$RegionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String iso, String name, String province, String lat, String long});
}

/// @nodoc
class __$RegionCopyWithImpl<$Res> extends _$RegionCopyWithImpl<$Res>
    implements _$RegionCopyWith<$Res> {
  __$RegionCopyWithImpl(_Region _value, $Res Function(_Region) _then)
      : super(_value, (v) => _then(v as _Region));

  @override
  _Region get _value => super._value as _Region;

  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
    Object? province = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_Region(
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Region implements _Region {
  _$_Region(
      {required this.iso,
      required this.name,
      required this.province,
      required this.lat,
      required this.long});

  factory _$_Region.fromJson(Map<String, dynamic> json) =>
      _$_$_RegionFromJson(json);

  @override
  final String iso;
  @override
  final String name;
  @override
  final String province;
  @override
  final String lat;
  @override
  final String long;

  @override
  String toString() {
    return 'Region(iso: $iso, name: $name, province: $province, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Region &&
            (identical(other.iso, iso) ||
                const DeepCollectionEquality().equals(other.iso, iso)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iso) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long);

  @JsonKey(ignore: true)
  @override
  _$RegionCopyWith<_Region> get copyWith =>
      __$RegionCopyWithImpl<_Region>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegionToJson(this);
  }
}

abstract class _Region implements Region {
  factory _Region(
      {required String iso,
      required String name,
      required String province,
      required String lat,
      required String long}) = _$_Region;

  factory _Region.fromJson(Map<String, dynamic> json) = _$_Region.fromJson;

  @override
  String get iso => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get province => throw _privateConstructorUsedError;
  @override
  String get lat => throw _privateConstructorUsedError;
  @override
  String get long => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegionCopyWith<_Region> get copyWith => throw _privateConstructorUsedError;
}
