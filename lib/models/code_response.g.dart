// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeResponseImpl _$$CodeResponseImplFromJson(Map<String, dynamic> json) =>
    _$CodeResponseImpl(
      output: json['output'] as String?,
      executionTime: json['executionTime'] as String?,
      memoryUsed: json['memoryUsed'] as String?,
    );

Map<String, dynamic> _$$CodeResponseImplToJson(_$CodeResponseImpl instance) =>
    <String, dynamic>{
      'output': instance.output,
      'executionTime': instance.executionTime,
      'memoryUsed': instance.memoryUsed,
    };
