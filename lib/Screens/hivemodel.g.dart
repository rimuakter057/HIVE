// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hivemodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInformationHiveModelAdapter
    extends TypeAdapter<UserInformationHiveModel> {
  @override
  final int typeId = 0;

  @override
  UserInformationHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserInformationHiveModel(
      Name: fields[0] as String?,
      Roll: fields[1] as String?,
      Deparment: fields[2] as String?,
      semester: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserInformationHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.Name)
      ..writeByte(1)
      ..write(obj.Roll)
      ..writeByte(2)
      ..write(obj.Deparment)
      ..writeByte(3)
      ..write(obj.semester);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInformationHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
