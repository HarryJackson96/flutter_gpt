// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_sse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceSSE _$$_ChoiceSSEFromJson(Map<String, dynamic> json) => _$_ChoiceSSE(
      message: json['delta'] == null
          ? null
          : Message.fromJson(json['delta'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$_ChoiceSSEToJson(_$_ChoiceSSE instance) =>
    <String, dynamic>{
      'delta': instance.message,
      'finish_reason': instance.finishReason,
      'index': instance.index,
    };
