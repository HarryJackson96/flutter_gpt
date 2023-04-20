// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_complete_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCompleteRequest _$$_ChatCompleteRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompleteRequest(
      model: json['model'] == null
          ? ChatModel.gptTurbo
          : const ChatModelConverter().fromJson(json['model'] as String),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxTokens: json['max_tokens'] as int? ?? 100,
    );

Map<String, dynamic> _$$_ChatCompleteRequestToJson(
        _$_ChatCompleteRequest instance) =>
    <String, dynamic>{
      'model': const ChatModelConverter().toJson(instance.model),
      'messages': instance.messages,
      'max_tokens': instance.maxTokens,
    };
