// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_sensor_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarSensorEvent _$CarSensorEventFromJson(
  Map<String, dynamic> json,
) => CarSensorEvent(
  (json['sensorType'] as num).toInt(),
  (json['timestamp'] as num).toInt(),
  (json['floatValues'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
  (json['intValues'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  (json['longValues'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
);

Map<String, dynamic> _$CarSensorEventToJson(CarSensorEvent instance) =>
    <String, dynamic>{
      'sensorType': instance.sensorType,
      'timestamp': instance.timestamp,
      'floatValues': instance.floatValues,
      'intValues': instance.intValues,
      'longValues': instance.longValues,
    };
