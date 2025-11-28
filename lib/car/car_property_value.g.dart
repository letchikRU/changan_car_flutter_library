// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_property_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarPropertyValue _$CarPropertyValueFromJson(Map<String, dynamic> json) =>
    CarPropertyValue(
      (json['areaId'] as num).toInt(),
      (json['propertyId'] as num).toInt(),
      (json['status'] as num).toInt(),
      (json['timestamp'] as num).toInt(),
      json['value'],
    );

Map<String, dynamic> _$CarPropertyValueToJson(CarPropertyValue instance) =>
    <String, dynamic>{
      'areaId': instance.areaId,
      'propertyId': instance.propertyId,
      'status': instance.status,
      'timestamp': instance.timestamp,
      'value': instance.value,
    };
