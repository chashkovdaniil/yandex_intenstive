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
      required int confirmed_diff,
      required int deaths_diff,
      required int recovered_diff,
      required String last_update,
      required int active,
      required int active_diff,
      required double fatality_rate,
      required Region region}) {
    return _CovidReport(
      date: date,
      confirmed: confirmed,
      deaths: deaths,
      recovered: recovered,
      confirmed_diff: confirmed_diff,
      deaths_diff: deaths_diff,
      recovered_diff: recovered_diff,
      last_update: last_update,
      active: active,
      active_diff: active_diff,
      fatality_rate: fatality_rate,
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
  int get confirmed_diff => throw _privateConstructorUsedError;
  int get deaths_diff => throw _privateConstructorUsedError;
  int get recovered_diff => throw _privateConstructorUsedError;
  String get last_update => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  int get active_diff => throw _privateConstructorUsedError;
  double get fatality_rate => throw _privateConstructorUsedError;
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
      int confirmed_diff,
      int deaths_diff,
      int recovered_diff,
      String last_update,
      int active,
      int active_diff,
      double fatality_rate,
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
    Object? confirmed_diff = freezed,
    Object? deaths_diff = freezed,
    Object? recovered_diff = freezed,
    Object? last_update = freezed,
    Object? active = freezed,
    Object? active_diff = freezed,
    Object? fatality_rate = freezed,
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
      confirmed_diff: confirmed_diff == freezed
          ? _value.confirmed_diff
          : confirmed_diff // ignore: cast_nullable_to_non_nullable
              as int,
      deaths_diff: deaths_diff == freezed
          ? _value.deaths_diff
          : deaths_diff // ignore: cast_nullable_to_non_nullable
              as int,
      recovered_diff: recovered_diff == freezed
          ? _value.recovered_diff
          : recovered_diff // ignore: cast_nullable_to_non_nullable
              as int,
      last_update: last_update == freezed
          ? _value.last_update
          : last_update // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      active_diff: active_diff == freezed
          ? _value.active_diff
          : active_diff // ignore: cast_nullable_to_non_nullable
              as int,
      fatality_rate: fatality_rate == freezed
          ? _value.fatality_rate
          : fatality_rate // ignore: cast_nullable_to_non_nullable
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
      int confirmed_diff,
      int deaths_diff,
      int recovered_diff,
      String last_update,
      int active,
      int active_diff,
      double fatality_rate,
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
    Object? confirmed_diff = freezed,
    Object? deaths_diff = freezed,
    Object? recovered_diff = freezed,
    Object? last_update = freezed,
    Object? active = freezed,
    Object? active_diff = freezed,
    Object? fatality_rate = freezed,
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
      confirmed_diff: confirmed_diff == freezed
          ? _value.confirmed_diff
          : confirmed_diff // ignore: cast_nullable_to_non_nullable
              as int,
      deaths_diff: deaths_diff == freezed
          ? _value.deaths_diff
          : deaths_diff // ignore: cast_nullable_to_non_nullable
              as int,
      recovered_diff: recovered_diff == freezed
          ? _value.recovered_diff
          : recovered_diff // ignore: cast_nullable_to_non_nullable
              as int,
      last_update: last_update == freezed
          ? _value.last_update
          : last_update // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      active_diff: active_diff == freezed
          ? _value.active_diff
          : active_diff // ignore: cast_nullable_to_non_nullable
              as int,
      fatality_rate: fatality_rate == freezed
          ? _value.fatality_rate
          : fatality_rate // ignore: cast_nullable_to_non_nullable
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
      required this.confirmed_diff,
      required this.deaths_diff,
      required this.recovered_diff,
      required this.last_update,
      required this.active,
      required this.active_diff,
      required this.fatality_rate,
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
  final int confirmed_diff;
  @override
  final int deaths_diff;
  @override
  final int recovered_diff;
  @override
  final String last_update;
  @override
  final int active;
  @override
  final int active_diff;
  @override
  final double fatality_rate;
  @override
  final Region region;

  @override
  String toString() {
    return 'CovidReport(date: $date, confirmed: $confirmed, deaths: $deaths, recovered: $recovered, confirmed_diff: $confirmed_diff, deaths_diff: $deaths_diff, recovered_diff: $recovered_diff, last_update: $last_update, active: $active, active_diff: $active_diff, fatality_rate: $fatality_rate, region: $region)';
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
            (identical(other.confirmed_diff, confirmed_diff) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed_diff, confirmed_diff)) &&
            (identical(other.deaths_diff, deaths_diff) ||
                const DeepCollectionEquality()
                    .equals(other.deaths_diff, deaths_diff)) &&
            (identical(other.recovered_diff, recovered_diff) ||
                const DeepCollectionEquality()
                    .equals(other.recovered_diff, recovered_diff)) &&
            (identical(other.last_update, last_update) ||
                const DeepCollectionEquality()
                    .equals(other.last_update, last_update)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.active_diff, active_diff) ||
                const DeepCollectionEquality()
                    .equals(other.active_diff, active_diff)) &&
            (identical(other.fatality_rate, fatality_rate) ||
                const DeepCollectionEquality()
                    .equals(other.fatality_rate, fatality_rate)) &&
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
      const DeepCollectionEquality().hash(confirmed_diff) ^
      const DeepCollectionEquality().hash(deaths_diff) ^
      const DeepCollectionEquality().hash(recovered_diff) ^
      const DeepCollectionEquality().hash(last_update) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(active_diff) ^
      const DeepCollectionEquality().hash(fatality_rate) ^
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
      required int confirmed_diff,
      required int deaths_diff,
      required int recovered_diff,
      required String last_update,
      required int active,
      required int active_diff,
      required double fatality_rate,
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
  int get confirmed_diff => throw _privateConstructorUsedError;
  @override
  int get deaths_diff => throw _privateConstructorUsedError;
  @override
  int get recovered_diff => throw _privateConstructorUsedError;
  @override
  String get last_update => throw _privateConstructorUsedError;
  @override
  int get active => throw _privateConstructorUsedError;
  @override
  int get active_diff => throw _privateConstructorUsedError;
  @override
  double get fatality_rate => throw _privateConstructorUsedError;
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
