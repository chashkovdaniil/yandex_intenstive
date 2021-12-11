// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'covid_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods',
);

CovidReportDto _$CovidReportDtoFromJson(Map<String, dynamic> json) {
  return _CovidReportDto.fromJson(json);
}

/// @nodoc
class _$CovidReportDtoTearOff {
  const _$CovidReportDtoTearOff();

  _CovidReportDto call(
      {required String date,
      required int confirmed,
      required int deaths,
      required int recovered,
      @JsonKey(name: 'confirmed_diff') required int confirmedDiff,
      @JsonKey(name: 'deaths_diff') required int deathsDiff,
      @JsonKey(name: 'recovered_diff') required int recoveredDiff,
      @JsonKey(name: 'last_update') required String lastUpdate,
      required int active,
      @JsonKey(name: 'active_diff') required int activeDiff,
      @JsonKey(name: 'fatality_rate') required double fatalityRate,
      required Map<String, dynamic>? region}) {
    return _CovidReportDto(
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

  CovidReportDto fromJson(Map<String, Object> json) {
    return CovidReportDto.fromJson(json);
  }
}

/// @nodoc
const $CovidReportDto = _$CovidReportDtoTearOff();

/// @nodoc
mixin _$CovidReportDto {
  String get date => throw _privateConstructorUsedError;
  int get confirmed => throw _privateConstructorUsedError;
  int get deaths => throw _privateConstructorUsedError;
  int get recovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmed_diff')
  int get confirmedDiff => throw _privateConstructorUsedError;
  @JsonKey(name: 'deaths_diff')
  int get deathsDiff => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovered_diff')
  int get recoveredDiff => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_update')
  String get lastUpdate => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_diff')
  int get activeDiff => throw _privateConstructorUsedError;
  @JsonKey(name: 'fatality_rate')
  double get fatalityRate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CovidReportDtoCopyWith<CovidReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CovidReportDtoCopyWith<$Res> {
  factory $CovidReportDtoCopyWith(
          CovidReportDto value, $Res Function(CovidReportDto) then) =
      _$CovidReportDtoCopyWithImpl<$Res>;
  $Res call(
      {String date,
      int confirmed,
      int deaths,
      int recovered,
      @JsonKey(name: 'confirmed_diff') int confirmedDiff,
      @JsonKey(name: 'deaths_diff') int deathsDiff,
      @JsonKey(name: 'recovered_diff') int recoveredDiff,
      @JsonKey(name: 'last_update') String lastUpdate,
      int active,
      @JsonKey(name: 'active_diff') int activeDiff,
      @JsonKey(name: 'fatality_rate') double fatalityRate,
      Map<String, dynamic>? region});
}

/// @nodoc
class _$CovidReportDtoCopyWithImpl<$Res>
    implements $CovidReportDtoCopyWith<$Res> {
  _$CovidReportDtoCopyWithImpl(this._value, this._then);

  final CovidReportDto _value;
  // ignore: unused_field
  final $Res Function(CovidReportDto) _then;

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
    return _then(
      _value.copyWith(
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
                as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
abstract class _$CovidReportDtoCopyWith<$Res>
    implements $CovidReportDtoCopyWith<$Res> {
  factory _$CovidReportDtoCopyWith(
          _CovidReportDto value, $Res Function(_CovidReportDto) then) =
      __$CovidReportDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      int confirmed,
      int deaths,
      int recovered,
      @JsonKey(name: 'confirmed_diff') int confirmedDiff,
      @JsonKey(name: 'deaths_diff') int deathsDiff,
      @JsonKey(name: 'recovered_diff') int recoveredDiff,
      @JsonKey(name: 'last_update') String lastUpdate,
      int active,
      @JsonKey(name: 'active_diff') int activeDiff,
      @JsonKey(name: 'fatality_rate') double fatalityRate,
      Map<String, dynamic>? region});
}

/// @nodoc
class __$CovidReportDtoCopyWithImpl<$Res>
    extends _$CovidReportDtoCopyWithImpl<$Res>
    implements _$CovidReportDtoCopyWith<$Res> {
  __$CovidReportDtoCopyWithImpl(
      _CovidReportDto _value, $Res Function(_CovidReportDto) _then)
      : super(_value, (v) => _then(v as _CovidReportDto));

  @override
  _CovidReportDto get _value => super._value as _CovidReportDto;

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
    return _then(
      _CovidReportDto(
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
                as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$_CovidReportDto implements _CovidReportDto {
  _$_CovidReportDto(
      {required this.date,
      required this.confirmed,
      required this.deaths,
      required this.recovered,
      @JsonKey(name: 'confirmed_diff') required this.confirmedDiff,
      @JsonKey(name: 'deaths_diff') required this.deathsDiff,
      @JsonKey(name: 'recovered_diff') required this.recoveredDiff,
      @JsonKey(name: 'last_update') required this.lastUpdate,
      required this.active,
      @JsonKey(name: 'active_diff') required this.activeDiff,
      @JsonKey(name: 'fatality_rate') required this.fatalityRate,
      required this.region});

  factory _$_CovidReportDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CovidReportDtoFromJson(json);

  @override
  final String date;
  @override
  final int confirmed;
  @override
  final int deaths;
  @override
  final int recovered;
  @override
  @JsonKey(name: 'confirmed_diff')
  final int confirmedDiff;
  @override
  @JsonKey(name: 'deaths_diff')
  final int deathsDiff;
  @override
  @JsonKey(name: 'recovered_diff')
  final int recoveredDiff;
  @override
  @JsonKey(name: 'last_update')
  final String lastUpdate;
  @override
  final int active;
  @override
  @JsonKey(name: 'active_diff')
  final int activeDiff;
  @override
  @JsonKey(name: 'fatality_rate')
  final double fatalityRate;
  @override
  final Map<String, dynamic>? region;

  @override
  String toString() {
    return 'CovidReportDto(date: $date, confirmed: $confirmed, deaths: $deaths, recovered: $recovered, confirmedDiff: $confirmedDiff, deathsDiff: $deathsDiff, recoveredDiff: $recoveredDiff, lastUpdate: $lastUpdate, active: $active, activeDiff: $activeDiff, fatalityRate: $fatalityRate, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CovidReportDto &&
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
  _$CovidReportDtoCopyWith<_CovidReportDto> get copyWith =>
      __$CovidReportDtoCopyWithImpl<_CovidReportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CovidReportDtoToJson(this);
  }
}

abstract class _CovidReportDto implements CovidReportDto {
  factory _CovidReportDto(
      {required String date,
      required int confirmed,
      required int deaths,
      required int recovered,
      @JsonKey(name: 'confirmed_diff') required int confirmedDiff,
      @JsonKey(name: 'deaths_diff') required int deathsDiff,
      @JsonKey(name: 'recovered_diff') required int recoveredDiff,
      @JsonKey(name: 'last_update') required String lastUpdate,
      required int active,
      @JsonKey(name: 'active_diff') required int activeDiff,
      @JsonKey(name: 'fatality_rate') required double fatalityRate,
      required Map<String, dynamic>? region}) = _$_CovidReportDto;

  factory _CovidReportDto.fromJson(Map<String, dynamic> json) =
      _$_CovidReportDto.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get confirmed => throw _privateConstructorUsedError;
  @override
  int get deaths => throw _privateConstructorUsedError;
  @override
  int get recovered => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'confirmed_diff')
  int get confirmedDiff => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'deaths_diff')
  int get deathsDiff => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'recovered_diff')
  int get recoveredDiff => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_update')
  String get lastUpdate => throw _privateConstructorUsedError;
  @override
  int get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'active_diff')
  int get activeDiff => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fatality_rate')
  double get fatalityRate => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get region => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CovidReportDtoCopyWith<_CovidReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}
