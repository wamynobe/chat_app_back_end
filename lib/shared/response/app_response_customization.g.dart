// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_response_customization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppResponseSuccessImpl _$$AppResponseSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$AppResponseSuccessImpl(
      message: json['message'] as String? ?? 'Success',
      statusCode: json['statusCode'] as int?,
      data: json['data'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppResponseSuccessImplToJson(
        _$AppResponseSuccessImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$AppResponseErrorImpl _$$AppResponseErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$AppResponseErrorImpl(
      message: json['message'] as String? ?? 'Error',
      statusCode: json['statusCode'] as int?,
      data: json['data'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppResponseErrorImplToJson(
        _$AppResponseErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'data': instance.data,
      'runtimeType': instance.$type,
    };
