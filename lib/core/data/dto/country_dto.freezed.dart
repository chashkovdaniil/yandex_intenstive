// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) {
  return _CountryDto.fromJson(json);
}

/// @nodoc
class _$CountryDtoTearOff {
  const _$CountryDtoTearOff();

  _CountryDto call({required String iso, required String name}) {
    return _CountryDto(
      iso: iso,
      name: name,
    );
  }

  CountryDto fromJson(Map<String, Object> json) {
    return CountryDto.fromJson(json);
  }
}

/// @nodoc
const $CountryDto = _$CountryDtoTearOff();

/// @nodoc
mixin _$CountryDto {
  String get iso => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDtoCopyWith<CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDtoCopyWith<$Res> {
  factory $CountryDtoCopyWith(
          CountryDto value, $Res Function(CountryDto) then) =
      _$CountryDtoCopyWithImpl<$Res>;
  $Res call({String iso, String name});
}

/// @nodoc
class _$CountryDtoCopyWithImpl<$Res> implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._value, this._then);

  final CountryDto _value;
  // ignore: unused_field
  final $Res Function(CountryDto) _then;

  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$CountryDtoCopyWith<$Res> implements $CountryDtoCopyWith<$Res> {
  factory _$CountryDtoCopyWith(
          _CountryDto value, $Res Function(_CountryDto) then) =
      __$CountryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String iso, String name});
}

/// @nodoc
class __$CountryDtoCopyWithImpl<$Res> extends _$CountryDtoCopyWithImpl<$Res>
    implements _$CountryDtoCopyWith<$Res> {
  __$CountryDtoCopyWithImpl(
      _CountryDto _value, $Res Function(_CountryDto) _then)
      : super(_value, (v) => _then(v as _CountryDto));

  @override
  _CountryDto get _value => super._value as _CountryDto;

  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
  }) {
    return _then(_CountryDto(
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDto implements _CountryDto {
  const _$_CountryDto({required this.iso, required this.name});

  factory _$_CountryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryDtoFromJson(json);

  @override
  final String iso;
  @override
  final String name;

  @override
  String toString() {
    return 'CountryDto(iso: $iso, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryDto &&
            (identical(other.iso, iso) ||
                const DeepCollectionEquality().equals(other.iso, iso)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iso) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CountryDtoCopyWith<_CountryDto> get copyWith =>
      __$CountryDtoCopyWithImpl<_CountryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryDtoToJson(this);
  }
}

abstract class _CountryDto implements CountryDto {
  const factory _CountryDto({required String iso, required String name}) =
      _$_CountryDto;

  factory _CountryDto.fromJson(Map<String, dynamic> json) =
      _$_CountryDto.fromJson;

  @override
  String get iso => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryDtoCopyWith<_CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
