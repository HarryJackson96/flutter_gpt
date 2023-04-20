// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_complete_sse_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCompleteSSEResponse _$$_ChatCompleteSSEResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompleteSSEResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceSSE.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatCompleteSSEResponseToJson(
        _$_ChatCompleteSSEResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
    };
