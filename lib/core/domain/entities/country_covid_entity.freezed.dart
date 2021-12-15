// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_covid_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {@HiveField(0) required String code,
      @HiveField(1) required String name}) {
    return _Country(
      code: code,
      name: name,
    );
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  @HiveField(0)
  String get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String code, @HiveField(1) String name});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String code, @HiveField(1) String name});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_Country(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'CountryAdapter')
class _$_Country implements _Country {
  const _$_Country(
      {@HiveField(0) required this.code, @HiveField(1) required this.name});

  @override
  @HiveField(0)
  final String code;
  @override
  @HiveField(1)
  final String name;

  @override
  String toString() {
    return 'Country(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);
}

abstract class _Country implements Country {
  const factory _Country(
      {@HiveField(0) required String code,
      @HiveField(1) required String name}) = _$_Country;

  @override
  @HiveField(0)
  String get code => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CountryCovidTearOff {
  const _$CountryCovidTearOff();

  _CountryCovid call(
      {@HiveField(0) required CovidReport covidReport,
      @HiveField(1) required List<ProvinceCovid> provinces,
      @HiveField(2) required Country country}) {
    return _CountryCovid(
      covidReport: covidReport,
      provinces: provinces,
      country: country,
    );
  }
}

/// @nodoc
const $CountryCovid = _$CountryCovidTearOff();

/// @nodoc
mixin _$CountryCovid {
  @HiveField(0)
  CovidReport get covidReport => throw _privateConstructorUsedError;
  @HiveField(1)
  List<ProvinceCovid> get provinces => throw _privateConstructorUsedError;
  @HiveField(2)
  Country get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCovidCopyWith<CountryCovid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCovidCopyWith<$Res> {
  factory $CountryCovidCopyWith(
          CountryCovid value, $Res Function(CountryCovid) then) =
      _$CountryCovidCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) CovidReport covidReport,
      @HiveField(1) List<ProvinceCovid> provinces,
      @HiveField(2) Country country});

  $CovidReportCopyWith<$Res> get covidReport;
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$CountryCovidCopyWithImpl<$Res> implements $CountryCovidCopyWith<$Res> {
  _$CountryCovidCopyWithImpl(this._value, this._then);

  final CountryCovid _value;
  // ignore: unused_field
  final $Res Function(CountryCovid) _then;

  @override
  $Res call({
    Object? covidReport = freezed,
    Object? provinces = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      covidReport: covidReport == freezed
          ? _value.covidReport
          : covidReport // ignore: cast_nullable_to_non_nullable
              as CovidReport,
      provinces: provinces == freezed
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceCovid>,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }

  @override
  $CovidReportCopyWith<$Res> get covidReport {
    return $CovidReportCopyWith<$Res>(_value.covidReport, (value) {
      return _then(_value.copyWith(covidReport: value));
    });
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$CountryCovidCopyWith<$Res>
    implements $CountryCovidCopyWith<$Res> {
  factory _$CountryCovidCopyWith(
          _CountryCovid value, $Res Function(_CountryCovid) then) =
      __$CountryCovidCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) CovidReport covidReport,
      @HiveField(1) List<ProvinceCovid> provinces,
      @HiveField(2) Country country});

  @override
  $CovidReportCopyWith<$Res> get covidReport;
  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$CountryCovidCopyWithImpl<$Res> extends _$CountryCovidCopyWithImpl<$Res>
    implements _$CountryCovidCopyWith<$Res> {
  __$CountryCovidCopyWithImpl(
      _CountryCovid _value, $Res Function(_CountryCovid) _then)
      : super(_value, (v) => _then(v as _CountryCovid));

  @override
  _CountryCovid get _value => super._value as _CountryCovid;

  @override
  $Res call({
    Object? covidReport = freezed,
    Object? provinces = freezed,
    Object? country = freezed,
  }) {
    return _then(_CountryCovid(
      covidReport: covidReport == freezed
          ? _value.covidReport
          : covidReport // ignore: cast_nullable_to_non_nullable
              as CovidReport,
      provinces: provinces == freezed
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceCovid>,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 2, adapterName: 'CountryCovidAdapter')
class _$_CountryCovid implements _CountryCovid {
  _$_CountryCovid(
      {@HiveField(0) required this.covidReport,
      @HiveField(1) required this.provinces,
      @HiveField(2) required this.country});

  @override
  @HiveField(0)
  final CovidReport covidReport;
  @override
  @HiveField(1)
  final List<ProvinceCovid> provinces;
  @override
  @HiveField(2)
  final Country country;

  @override
  String toString() {
    return 'CountryCovid(covidReport: $covidReport, provinces: $provinces, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryCovid &&
            (identical(other.covidReport, covidReport) ||
                const DeepCollectionEquality()
                    .equals(other.covidReport, covidReport)) &&
            (identical(other.provinces, provinces) ||
                const DeepCollectionEquality()
                    .equals(other.provinces, provinces)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(covidReport) ^
      const DeepCollectionEquality().hash(provinces) ^
      const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$CountryCovidCopyWith<_CountryCovid> get copyWith =>
      __$CountryCovidCopyWithImpl<_CountryCovid>(this, _$identity);
}

abstract class _CountryCovid implements CountryCovid {
  factory _CountryCovid(
      {@HiveField(0) required CovidReport covidReport,
      @HiveField(1) required List<ProvinceCovid> provinces,
      @HiveField(2) required Country country}) = _$_CountryCovid;

  @override
  @HiveField(0)
  CovidReport get covidReport => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  List<ProvinceCovid> get provinces => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  Country get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCovidCopyWith<_CountryCovid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProvinceTearOff {
  const _$ProvinceTearOff();

  _Province call(
      {@HiveField(0) required String name,
      @HiveField(1) required double lat,
      @HiveField(2) required double long}) {
    return _Province(
      name: name,
      lat: lat,
      long: long,
    );
  }
}

/// @nodoc
const $Province = _$ProvinceTearOff();

/// @nodoc
mixin _$Province {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  double get lat => throw _privateConstructorUsedError;
  @HiveField(2)
  double get long => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double lat,
      @HiveField(2) double long});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res> implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  final Province _value;
  // ignore: unused_field
  final $Res Function(Province) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$ProvinceCopyWith(_Province value, $Res Function(_Province) then) =
      __$ProvinceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double lat,
      @HiveField(2) double long});
}

/// @nodoc
class __$ProvinceCopyWithImpl<$Res> extends _$ProvinceCopyWithImpl<$Res>
    implements _$ProvinceCopyWith<$Res> {
  __$ProvinceCopyWithImpl(_Province _value, $Res Function(_Province) _then)
      : super(_value, (v) => _then(v as _Province));

  @override
  _Province get _value => super._value as _Province;

  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_Province(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 3, adapterName: 'ProvinceAdapter')
class _$_Province implements _Province {
  _$_Province(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.lat,
      @HiveField(2) required this.long});

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final double lat;
  @override
  @HiveField(2)
  final double long;

  @override
  String toString() {
    return 'Province(name: $name, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Province &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long);

  @JsonKey(ignore: true)
  @override
  _$ProvinceCopyWith<_Province> get copyWith =>
      __$ProvinceCopyWithImpl<_Province>(this, _$identity);
}

abstract class _Province implements Province {
  factory _Province(
      {@HiveField(0) required String name,
      @HiveField(1) required double lat,
      @HiveField(2) required double long}) = _$_Province;

  @override
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  double get lat => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  double get long => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProvinceCopyWith<_Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProvinceCovidTearOff {
  const _$ProvinceCovidTearOff();

  _ProvinceCovid call(
      {@HiveField(0) required CovidReport covidReport,
      @HiveField(1) required Province province}) {
    return _ProvinceCovid(
      covidReport: covidReport,
      province: province,
    );
  }
}

/// @nodoc
const $ProvinceCovid = _$ProvinceCovidTearOff();

/// @nodoc
mixin _$ProvinceCovid {
  @HiveField(0)
  CovidReport get covidReport => throw _privateConstructorUsedError;
  @HiveField(1)
  Province get province => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProvinceCovidCopyWith<ProvinceCovid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCovidCopyWith<$Res> {
  factory $ProvinceCovidCopyWith(
          ProvinceCovid value, $Res Function(ProvinceCovid) then) =
      _$ProvinceCovidCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) CovidReport covidReport, @HiveField(1) Province province});

  $CovidReportCopyWith<$Res> get covidReport;
  $ProvinceCopyWith<$Res> get province;
}

/// @nodoc
class _$ProvinceCovidCopyWithImpl<$Res>
    implements $ProvinceCovidCopyWith<$Res> {
  _$ProvinceCovidCopyWithImpl(this._value, this._then);

  final ProvinceCovid _value;
  // ignore: unused_field
  final $Res Function(ProvinceCovid) _then;

  @override
  $Res call({
    Object? covidReport = freezed,
    Object? province = freezed,
  }) {
    return _then(_value.copyWith(
      covidReport: covidReport == freezed
          ? _value.covidReport
          : covidReport // ignore: cast_nullable_to_non_nullable
              as CovidReport,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province,
    ));
  }

  @override
  $CovidReportCopyWith<$Res> get covidReport {
    return $CovidReportCopyWith<$Res>(_value.covidReport, (value) {
      return _then(_value.copyWith(covidReport: value));
    });
  }

  @override
  $ProvinceCopyWith<$Res> get province {
    return $ProvinceCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value));
    });
  }
}

/// @nodoc
abstract class _$ProvinceCovidCopyWith<$Res>
    implements $ProvinceCovidCopyWith<$Res> {
  factory _$ProvinceCovidCopyWith(
          _ProvinceCovid value, $Res Function(_ProvinceCovid) then) =
      __$ProvinceCovidCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) CovidReport covidReport, @HiveField(1) Province province});

  @override
  $CovidReportCopyWith<$Res> get covidReport;
  @override
  $ProvinceCopyWith<$Res> get province;
}

/// @nodoc
class __$ProvinceCovidCopyWithImpl<$Res>
    extends _$ProvinceCovidCopyWithImpl<$Res>
    implements _$ProvinceCovidCopyWith<$Res> {
  __$ProvinceCovidCopyWithImpl(
      _ProvinceCovid _value, $Res Function(_ProvinceCovid) _then)
      : super(_value, (v) => _then(v as _ProvinceCovid));

  @override
  _ProvinceCovid get _value => super._value as _ProvinceCovid;

  @override
  $Res call({
    Object? covidReport = freezed,
    Object? province = freezed,
  }) {
    return _then(_ProvinceCovid(
      covidReport: covidReport == freezed
          ? _value.covidReport
          : covidReport // ignore: cast_nullable_to_non_nullable
              as CovidReport,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 4, adapterName: 'ProvinceCovidAdapter')
class _$_ProvinceCovid implements _ProvinceCovid {
  _$_ProvinceCovid(
      {@HiveField(0) required this.covidReport,
      @HiveField(1) required this.province});

  @override
  @HiveField(0)
  final CovidReport covidReport;
  @override
  @HiveField(1)
  final Province province;

  @override
  String toString() {
    return 'ProvinceCovid(covidReport: $covidReport, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvinceCovid &&
            (identical(other.covidReport, covidReport) ||
                const DeepCollectionEquality()
                    .equals(other.covidReport, covidReport)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(covidReport) ^
      const DeepCollectionEquality().hash(province);

  @JsonKey(ignore: true)
  @override
  _$ProvinceCovidCopyWith<_ProvinceCovid> get copyWith =>
      __$ProvinceCovidCopyWithImpl<_ProvinceCovid>(this, _$identity);
}

abstract class _ProvinceCovid implements ProvinceCovid {
  factory _ProvinceCovid(
      {@HiveField(0) required CovidReport covidReport,
      @HiveField(1) required Province province}) = _$_ProvinceCovid;

  @override
  @HiveField(0)
  CovidReport get covidReport => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  Province get province => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProvinceCovidCopyWith<_ProvinceCovid> get copyWith =>
      throw _privateConstructorUsedError;
}
