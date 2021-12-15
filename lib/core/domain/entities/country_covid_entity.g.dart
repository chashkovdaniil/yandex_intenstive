// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_covid_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryAdapter extends TypeAdapter<_$_Country> {
  @override
  final int typeId = 1;

  @override
  _$_Country read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Country(
      code: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Country obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CountryCovidAdapter extends TypeAdapter<_$_CountryCovid> {
  @override
  final int typeId = 2;

  @override
  _$_CountryCovid read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CountryCovid(
      covidReport: fields[0] as CovidReport,
      provinces: (fields[1] as List).cast<ProvinceCovid>(),
      country: fields[2] as Country,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CountryCovid obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.covidReport)
      ..writeByte(1)
      ..write(obj.provinces)
      ..writeByte(2)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryCovidAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProvinceAdapter extends TypeAdapter<_$_Province> {
  @override
  final int typeId = 3;

  @override
  _$_Province read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Province(
      name: fields[0] as String,
      lat: fields[1] as double,
      long: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Province obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.long);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProvinceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProvinceCovidAdapter extends TypeAdapter<_$_ProvinceCovid> {
  @override
  final int typeId = 4;

  @override
  _$_ProvinceCovid read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ProvinceCovid(
      covidReport: fields[0] as CovidReport,
      province: fields[1] as Province,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ProvinceCovid obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.covidReport)
      ..writeByte(1)
      ..write(obj.province);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProvinceCovidAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
