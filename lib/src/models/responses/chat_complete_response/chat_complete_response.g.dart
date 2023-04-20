// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_complete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCompleteResponse _$$_ChatCompleteResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompleteResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatCompleteResponseToJson(
        _$_ChatCompleteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
    };
