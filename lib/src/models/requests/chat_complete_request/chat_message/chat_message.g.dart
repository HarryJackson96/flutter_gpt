// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$$_ChatMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatMessage(
      role: $enumDecodeNullable(_$ChatMessageRoleEnumMap, json['role']) ??
          ChatMessageRole.user,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'role': _$ChatMessageRoleEnumMap[instance.role]!,
      'content': instance.content,
    };

const _$ChatMessageRoleEnumMap = {
  ChatMessageRole.user: 'user',
  ChatMessageRole.assistant: 'assistant',
  ChatMessageRole.system: 'system',
};
