// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrinterModelImplImpl _$$PrinterModelImplImplFromJson(
        Map<String, dynamic> json) =>
    _$PrinterModelImplImpl(
      id: json['id'] as String?,
      printerName: json['printerName'] as String?,
      storeId: json['storeId'] as String?,
      countJobs: json['countJobs'] as int?,
      printerOnline: json['printerOnline'] as bool?,
    );

Map<String, dynamic> _$$PrinterModelImplImplToJson(
        _$PrinterModelImplImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'printerName': instance.printerName,
      'storeId': instance.storeId,
      'countJobs': instance.countJobs,
      'printerOnline': instance.printerOnline,
    };
