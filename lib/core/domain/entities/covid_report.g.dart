// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_report.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CovidReportAdapter extends TypeAdapter<_$_CovidReport> {
  @override
  final int typeId = 5;

  @override
  _$_CovidReport read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CovidReport(
      date: fields[0] as DateTime,
      confirmed: fields[1] as int,
      deaths: fields[2] as int,
      recovered: fields[3] as int,
      confirmedDiff: fields[4] as int,
      deathsDiff: fields[5] as int,
      recoveredDiff: fields[6] as int,
      lastUpdate: fields[7] as DateTime,
      active: fields[8] as int,
      activeDiff: fields[9] as int,
      fatalityRate: fields[10] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CovidReport obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.confirmed)
      ..writeByte(2)
      ..write(obj.deaths)
      ..writeByte(3)
      ..write(obj.recovered)
      ..writeByte(4)
      ..write(obj.confirmedDiff)
      ..writeByte(5)
      ..write(obj.deathsDiff)
      ..writeByte(6)
      ..write(obj.recoveredDiff)
      ..writeByte(7)
      ..write(obj.lastUpdate)
      ..writeByte(8)
      ..write(obj.active)
      ..writeByte(9)
      ..write(obj.activeDiff)
      ..writeByte(10)
      ..write(obj.fatalityRate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CovidReportAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
